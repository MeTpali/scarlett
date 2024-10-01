import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

@RoutePage()
class PerformanceMeasurePage extends StatelessWidget {
  const PerformanceMeasurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PerformanceMeasurePager(title: 'Sex narkotiky'),
    );
  }
}

/// Страница со сбором метрики рендеринга
class PerformanceMeasurePager extends StatefulWidget {
  const PerformanceMeasurePager({super.key, required this.title});

  final String title;

  @override
  State<PerformanceMeasurePager> createState() =>
      _PerformanceMeasurePagerState();
}

class _PerformanceMeasurePagerState extends State<PerformanceMeasurePager> {
  /// Показывать или нет [CircularProgressIndicator]
  /// [CircularProgressIndicator] это постоянная анимация
  /// Здесь он используется чтобы намеренно создать нагрузку на рендеринг
  bool showProgressIndicator = false;

  /// [StreamController] для событий TimingsCallback.
  late final StreamController<FrameTiming> _frameTimingsStreamController;

  @override
  void initState() {
    super.initState();

    /// Инициализация [StreamController]
    _frameTimingsStreamController = StreamController<FrameTiming>.broadcast();

    /// Регистрируем [TimingsCallback] в [SchedulerBinding]
    /// Лучше не использовать анонимную функцию, тк есть риск потерять на нее ссылку и не удалить обработчик
    /// Поэтому используется внутренний метод, ссылка на который для объекта состояния не поменяется
    SchedulerBinding.instance.addTimingsCallback(_onTimingsCallback);
  }

  @override
  void dispose() {
    /// Удаляем [TimingsCallback] чтобы не создавать дополнительную нагрузку на CPU
    SchedulerBinding.instance.removeTimingsCallback(_onTimingsCallback);
    _frameTimingsStreamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Spacer(flex: 3),
            NonAnimatedButton(
              onTap: _onCallSetstateButtonTapped,
              text: 'Вызвать setState',
            ),
            const SizedBox(height: 20),
            NonAnimatedButton(
              onTap: _onShowAnimationButtonTapped,
              text: 'Показать CircularProgressIndicator',
            ),
            const SizedBox(height: 20),
            if (showProgressIndicator) const CircularProgressIndicator(),
            const Spacer(),
            AverageFrameStats(
              frameTiming: _frameTimingsStreamController.stream,
            ),
            const Spacer(flex: 3)
          ],
        ),
      ),
    );
  }

  void _onCallSetstateButtonTapped() {
    setState(() {});
  }

  void _onShowAnimationButtonTapped() {
    setState(() {
      showProgressIndicator = !showProgressIndicator;
    });
  }

  void _onTimingsCallback(List<FrameTiming> timings) {
    for (final timing in timings) {
      // Добавление в streamController через add для примера
      // В реальном приложении лучше предусмотреть механизм тротлинга
      // элементов [FrameTiming] перед вызовом метода add, если есть необходимость использовать Stream Api
      // Может вызывать джанки т.к. потенциально создает много микро-задач (microtasks)
      _frameTimingsStreamController.add(timing);
    }
    _reportTimings(timings);
  }

  void _reportTimings(List<FrameTiming> timings) {
    // Можно отправлять аналитику про длительность кадров
    // Например, используя AppMetrica
    //
    // Обычно требуется какая-то минимальная пред-обработка:
    // Отправлять огромное количество метрики про каждый кадр не рационально,
    // Лучше собрать какую-то статистику сессии на устройстве и отправить ее
  }
}

/// Кнопка без анимаций.
/// Стандартные кнопки из библиотеки Material используют [InkWell]
/// Это создает лишнюю нагрузку на рендеринг, а мы хотим посмотреть как
/// работает [TimingsCallback] без лишнего шума
class NonAnimatedButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const NonAnimatedButton({
    required this.onTap,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.lightBlue,
        ),
        child: SizedBox(
          width: 130,
          height: 56,
          child: Center(child: Text(text)),
        ),
      ),
    );
  }
}

/// Виджет со сбором статистики про фреймы.
/// Получает на вход поток данных [FrameTiming] и агрегирует их в статистику
class AverageFrameStats extends StatefulWidget {
  final Stream<FrameTiming> frameTiming;
  const AverageFrameStats({required this.frameTiming, Key? key})
      : super(key: key);

  @override
  State<AverageFrameStats> createState() => _AverageFrameStatsState();
}

class _AverageFrameStatsState extends State<AverageFrameStats> {
  StreamSubscription<FrameTiming>? _framesStreamSub;

  int currentFrame = 0;
  int maxBuildDurationMs = 0;
  int maxRasterDurationMs = 0;

  @override
  void initState() {
    _framesStreamSub = widget.frameTiming.listen(_onFrameEvent);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant AverageFrameStats oldWidget) {
    if (oldWidget.frameTiming != widget.frameTiming) {
      _framesStreamSub?.cancel();
      _framesStreamSub = widget.frameTiming.listen(_onFrameEvent);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _framesStreamSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text('Номер текущего кадра $currentFrame'),
            const SizedBox(height: 10),
            Text(
              'Макс. продолжительность сборки кадра в UI $maxBuildDurationMs мс',
            ),
            const SizedBox(height: 10),
            Text(
              'Макс. продолжительность растеризации $maxRasterDurationMs мс',
            )
          ],
        ),
      ),
    );
  }

  void _onFrameEvent(FrameTiming timing) {
    currentFrame = timing.frameNumber;
    if (timing.buildDuration.inMilliseconds > maxBuildDurationMs) {
      maxBuildDurationMs = timing.buildDuration.inMilliseconds;
    }
    if (timing.rasterDuration.inMilliseconds > maxRasterDurationMs) {
      maxRasterDurationMs = timing.rasterDuration.inMilliseconds;
    }
    setState(() {});
  }
}
