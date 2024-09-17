//
//  Generated code. Do not modify.
//  source: sex.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'sex.pb.dart' as $0;

export 'sex.pb.dart';

@$pb.GrpcServiceName('SexRpc')
class SexRpcClient extends $grpc.Client {
  static final _$sexStream = $grpc.ClientMethod<$0.RequestDto, $0.ResponseDto>(
      '/SexRpc/SexStream',
      ($0.RequestDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ResponseDto.fromBuffer(value));

  SexRpcClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$0.ResponseDto> sexStream($async.Stream<$0.RequestDto> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$sexStream, request, options: options);
  }
}

@$pb.GrpcServiceName('SexRpc')
abstract class SexRpcServiceBase extends $grpc.Service {
  $core.String get $name => 'SexRpc';

  SexRpcServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RequestDto, $0.ResponseDto>(
        'SexStream',
        sexStream,
        true,
        true,
        ($core.List<$core.int> value) => $0.RequestDto.fromBuffer(value),
        ($0.ResponseDto value) => value.writeToBuffer()));
  }

  $async.Stream<$0.ResponseDto> sexStream($grpc.ServiceCall call, $async.Stream<$0.RequestDto> request);
}
