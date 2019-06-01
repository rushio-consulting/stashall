import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:generated_io/generated_io.dart';
import 'package:grpc/grpc.dart';

part 'user.g.dart';

class UserStore = _UserStore with _$UserStore;

enum UserLoggedState {
  unknown,
  notLogged,
  logged,
  error,
}

abstract class _UserStore with Store {
  final AuthenticationServiceClient client;

  @observable
  UserLoggedState isLogged = UserLoggedState.unknown;

  @observable
  String errorMessage;

  _UserStore(this.client);

  @action
  Future<void> checkIsLogged() async {
    try {
      await client.isLogged(Empty());
      isLogged = UserLoggedState.logged;
    } on GrpcError catch (e) {
      if (e.code == StatusCode.unauthenticated) {
        isLogged = UserLoggedState.notLogged;
      } else {
        isLogged = UserLoggedState.error;
        errorMessage = e.message;
      }
    }
  }
}
