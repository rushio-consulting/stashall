///
//  Generated code. Do not modify.
//  source: services/authentication_service.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/grpc.dart';

import 'authentication_service.pb.dart';
import '../google/protobuf/empty.pb.dart' as $0;
export 'authentication_service.pb.dart';

class AuthenticationServiceClient extends Client {
  static final _$signin = new ClientMethod<SigninRequest, $0.Empty>(
      '/stashall.AuthenticationService/signin',
      (SigninRequest value) => value.writeToBuffer(),
      (List<int> value) => new $0.Empty.fromBuffer(value));
  static final _$signout = new ClientMethod<$0.Empty, $0.Empty>(
      '/stashall.AuthenticationService/signout',
      ($0.Empty value) => value.writeToBuffer(),
      (List<int> value) => new $0.Empty.fromBuffer(value));
  static final _$isLogged = new ClientMethod<$0.Empty, $0.Empty>(
      '/stashall.AuthenticationService/isLogged',
      ($0.Empty value) => value.writeToBuffer(),
      (List<int> value) => new $0.Empty.fromBuffer(value));

  AuthenticationServiceClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseFuture<$0.Empty> signin(SigninRequest request,
      {CallOptions options}) {
    final call = $createCall(
        _$signin, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }

  ResponseFuture<$0.Empty> signout($0.Empty request, {CallOptions options}) {
    final call = $createCall(
        _$signout, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }

  ResponseFuture<$0.Empty> isLogged($0.Empty request, {CallOptions options}) {
    final call = $createCall(
        _$isLogged, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }
}

abstract class AuthenticationServiceBase extends Service {
  String get $name => 'stashall.AuthenticationService';

  AuthenticationServiceBase() {
    $addMethod(new ServiceMethod<SigninRequest, $0.Empty>(
        'signin',
        signin_Pre,
        false,
        false,
        (List<int> value) => new SigninRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<$0.Empty, $0.Empty>(
        'signout',
        signout_Pre,
        false,
        false,
        (List<int> value) => new $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<$0.Empty, $0.Empty>(
        'isLogged',
        isLogged_Pre,
        false,
        false,
        (List<int> value) => new $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> signin_Pre(
      ServiceCall call, $async.Future request) async {
    return signin(call, await request);
  }

  $async.Future<$0.Empty> signout_Pre(
      ServiceCall call, $async.Future request) async {
    return signout(call, await request);
  }

  $async.Future<$0.Empty> isLogged_Pre(
      ServiceCall call, $async.Future request) async {
    return isLogged(call, await request);
  }

  $async.Future<$0.Empty> signin(ServiceCall call, SigninRequest request);
  $async.Future<$0.Empty> signout(ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> isLogged(ServiceCall call, $0.Empty request);
}
