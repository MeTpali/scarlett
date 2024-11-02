import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pure_analog/di/pure_analog_di.dart';
import 'package:pure_analog/features/dialog/temptation_tile.dart';
import 'package:pure_analog/resources/mock_images.dart';
import 'package:pure_analog/resources/pure_icons.dart';
import 'package:topg/topg.dart';

import '../../features/modals/bottom.dart';
import '../../resources/images.dart';

@RoutePage()
class PureDialogPage extends ConsumerStatefulWidget {
  const PureDialogPage({super.key});

  @override
  ConsumerState<PureDialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends ConsumerState<PureDialogPage> {
  bool showTemptation = true;

  void toggleTemptation() => setState(() {
        showTemptation = false;
      });

  @override
  Widget build(BuildContext context) {
    final dialogModel = ref.watch(PureAnalogDi.dialogProvider);
    final dialogNotifier = ref.watch(PureAnalogDi.dialogProvider.notifier);

    final topgTheme = TopGTheme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: dialogModel.maybeMap(
          resolved: (dialog) => ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            child: Image.asset(
              MockImages.avatars[dialog.avatarId],
              height: 30,
              width: 30,
              fit: BoxFit.cover,
            ),
          ),
          orElse: () => null,
        ),
        actions: [
          Icon(
            Icons.more_vert,
            color: topgTheme.mode == TopGMode.dark
                ? const Color(0xFFF6F4F4)
                : TopGColors.blackFogra,
          ),
        ],
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).padding.top + 30),
              child: Image.asset(
                PureImages.logo,
                opacity: const AlwaysStoppedAnimation(0.5),
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            left: 0,
            child: Column(
              children: [
                const SizedBox(height: 102),
                showTemptation
                    ? dialogModel.maybeMap(
                        resolved: (dialog) => TemptationTile(
                          count: dialog.temptationCount,
                          onClose: toggleTemptation,
                        ),
                        orElse: () => const SizedBox(height: 39),
                      )
                    : const SizedBox(height: 39),
                const SizedBox(height: 16),
                Expanded(
                  child: PureBottomSheet(
                    child: dialogModel.map(
                      error: (e) => Center(child: Text(e.toString())),
                      loading: (_) =>
                          const Center(child: CircularProgressIndicator()),
                      resolved: (dialog) {
                        if (dialog.messages.isEmpty) {
                          return const Text(
                            'Начни общение',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF8D8D8D),
                            ),
                          );
                        }

                        final messageList = List.generate(
                          dialog.messages.length,
                          (i) => MessageModel(
                            author: dialog.messages[i].isMy
                                ? MessageAuthor.you
                                : MessageAuthor.interlocutor,
                            message: dialog.messages[i].text,
                            date: dialog.messages[i].timestamp,
                          ),
                        );
                        return Column(
                          children: [
                            Expanded(
                              child: ChatView(
                                messageList: messageList.reversed.toList(),
                              ),
                            ),
                            ChatTextField(
                              onSend: (text) {
                                dialogNotifier.sendMessage(text);
                              },
                              leading: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  color: Color(0xFF8D8D8D),
                                ),
                              ),
                              actions: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.mic_none,
                                    color: Color(0xFF8D8D8D),
                                  ),
                                ),
                              ],
                              textFieldPadding:
                                  const EdgeInsets.symmetric(vertical: 10),
                              textFieldDecoration: InputDecoration(
                                labelText: 'Сообщение...',
                                labelStyle:
                                    const TextStyle(color: Color(0xFF8D8D8D)),
                                suffix: SvgPicture.asset(PureIcons.alien),
                                border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  borderSide:
                                      BorderSide(color: Color(0xFF8D8D8D)),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
