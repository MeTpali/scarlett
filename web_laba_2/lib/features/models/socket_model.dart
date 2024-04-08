import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_model.freezed.dart';

@freezed
class SocketModel with _$SocketModel {
  const factory SocketModel.data({
    required String data,
  }) = _DataSocketModel;

  const factory SocketModel.error({
    required String error,
  }) = _ErrorSocketModel;

  const factory SocketModel.done({
    required String message,
  }) = _DoneSocketModel;

  const factory SocketModel.connected() = _ConnectedSocketModel;

  const factory SocketModel.loading() = _LoadingSocketModel;

  const factory SocketModel.idle() = _IDLESocketModel;
}
