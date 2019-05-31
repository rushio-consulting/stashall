///
//  Generated code. Do not modify.
//  source: services/passwords_service.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/grpc.dart';

import 'passwords_service.pb.dart';
import '../google/protobuf/empty.pb.dart' as $0;
import '../models/password.pb.dart' as $1;
export 'passwords_service.pb.dart';

class PasswordsServiceClient extends Client {
  static final _$createPassword =
      new ClientMethod<CreatePasswordRequest, $0.Empty>(
          '/stashall.PasswordsService/createPassword',
          (CreatePasswordRequest value) => value.writeToBuffer(),
          (List<int> value) => new $0.Empty.fromBuffer(value));
  static final _$editPassword = new ClientMethod<$1.Password, $0.Empty>(
      '/stashall.PasswordsService/editPassword',
      ($1.Password value) => value.writeToBuffer(),
      (List<int> value) => new $0.Empty.fromBuffer(value));
  static final _$deletePassword = new ClientMethod<$1.Password, $0.Empty>(
      '/stashall.PasswordsService/deletePassword',
      ($1.Password value) => value.writeToBuffer(),
      (List<int> value) => new $0.Empty.fromBuffer(value));

  PasswordsServiceClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseFuture<$0.Empty> createPassword(CreatePasswordRequest request,
      {CallOptions options}) {
    final call = $createCall(
        _$createPassword, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }

  ResponseFuture<$0.Empty> editPassword($1.Password request,
      {CallOptions options}) {
    final call = $createCall(
        _$editPassword, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }

  ResponseFuture<$0.Empty> deletePassword($1.Password request,
      {CallOptions options}) {
    final call = $createCall(
        _$deletePassword, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }
}

abstract class PasswordsServiceBase extends Service {
  String get $name => 'stashall.PasswordsService';

  PasswordsServiceBase() {
    $addMethod(new ServiceMethod<CreatePasswordRequest, $0.Empty>(
        'createPassword',
        createPassword_Pre,
        false,
        false,
        (List<int> value) => new CreatePasswordRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<$1.Password, $0.Empty>(
        'editPassword',
        editPassword_Pre,
        false,
        false,
        (List<int> value) => new $1.Password.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<$1.Password, $0.Empty>(
        'deletePassword',
        deletePassword_Pre,
        false,
        false,
        (List<int> value) => new $1.Password.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> createPassword_Pre(
      ServiceCall call, $async.Future request) async {
    return createPassword(call, await request);
  }

  $async.Future<$0.Empty> editPassword_Pre(
      ServiceCall call, $async.Future request) async {
    return editPassword(call, await request);
  }

  $async.Future<$0.Empty> deletePassword_Pre(
      ServiceCall call, $async.Future request) async {
    return deletePassword(call, await request);
  }

  $async.Future<$0.Empty> createPassword(
      ServiceCall call, CreatePasswordRequest request);
  $async.Future<$0.Empty> editPassword(ServiceCall call, $1.Password request);
  $async.Future<$0.Empty> deletePassword(ServiceCall call, $1.Password request);
}
