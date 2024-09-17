import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:grpc/grpc_web.dart';

import 'src/generated/sex.pbgrpc.dart';

class SexService {
  late final SexRpcClient _client;
  late final StreamController<RequestDto> _controller;

  SexService() {
    final channel =
        GrpcWebClientChannel.xhr(Uri.parse('http://192.168.255.25:1337'));
    _client = SexRpcClient(channel);
    _controller = StreamController.broadcast();
  }

  void sendSex() {
    _controller.sink.add(RequestDto(
        apiId: '22801337', apiHash: 'sdfkvsdfvusfduvesuufidbvufbuvb'));
  }

  Stream<ResponseDto> get stream => _client.sexStream(_controller.stream);
}

class SexCubit extends Cubit<SexState> {
  final SexService _service;
  StreamSubscription? _sub;
  SexCubit({required SexService service})
      : _service = service,
        super(SexState(message: ''));

  void init() {
    _sub ??= _service.stream.listen(onEvent);
  }

  void onEvent(ResponseDto resp) {
    emit(SexState(message: resp.message));
  }

  void sendSex() {
    _service.sendSex();
  }

  @override
  Future<void> close() async {
    await _sub?.cancel();
    return super.close();
  }
}

class SexState {
  final String message;
  SexState({required this.message});
}
