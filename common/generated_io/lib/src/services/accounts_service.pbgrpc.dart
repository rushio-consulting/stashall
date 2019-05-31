///
//  Generated code. Do not modify.
//  source: services/accounts_service.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/grpc.dart';

import 'accounts_service.pb.dart';
import '../google/protobuf/empty.pb.dart' as $0;
export 'accounts_service.pb.dart';

class AccountsServiceClient extends Client {
  static final _$createAccount =
      new ClientMethod<CreateAccountRequest, $0.Empty>(
          '/stashall.AccountsService/createAccount',
          (CreateAccountRequest value) => value.writeToBuffer(),
          (List<int> value) => new $0.Empty.fromBuffer(value));
  static final _$me = new ClientMethod<$0.Empty, MeResponse>(
      '/stashall.AccountsService/me',
      ($0.Empty value) => value.writeToBuffer(),
      (List<int> value) => new MeResponse.fromBuffer(value));

  AccountsServiceClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseFuture<$0.Empty> createAccount(CreateAccountRequest request,
      {CallOptions options}) {
    final call = $createCall(
        _$createAccount, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }

  ResponseFuture<MeResponse> me($0.Empty request, {CallOptions options}) {
    final call = $createCall(_$me, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }
}

abstract class AccountsServiceBase extends Service {
  String get $name => 'stashall.AccountsService';

  AccountsServiceBase() {
    $addMethod(new ServiceMethod<CreateAccountRequest, $0.Empty>(
        'createAccount',
        createAccount_Pre,
        false,
        false,
        (List<int> value) => new CreateAccountRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<$0.Empty, MeResponse>(
        'me',
        me_Pre,
        false,
        false,
        (List<int> value) => new $0.Empty.fromBuffer(value),
        (MeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> createAccount_Pre(
      ServiceCall call, $async.Future request) async {
    return createAccount(call, await request);
  }

  $async.Future<MeResponse> me_Pre(
      ServiceCall call, $async.Future request) async {
    return me(call, await request);
  }

  $async.Future<$0.Empty> createAccount(
      ServiceCall call, CreateAccountRequest request);
  $async.Future<MeResponse> me(ServiceCall call, $0.Empty request);
}
