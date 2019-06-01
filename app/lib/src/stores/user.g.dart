// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$UserStore on _UserStore, Store {
  final _$isLoggedAtom = Atom(name: '_UserStore.isLogged');

  @override
  UserLoggedState get isLogged {
    _$isLoggedAtom.reportObserved();
    return super.isLogged;
  }

  @override
  set isLogged(UserLoggedState value) {
    _$isLoggedAtom.context.checkIfStateModificationsAreAllowed(_$isLoggedAtom);
    super.isLogged = value;
    _$isLoggedAtom.reportChanged();
  }

  final _$errorMessageAtom = Atom(name: '_UserStore.errorMessage');

  @override
  String get errorMessage {
    _$errorMessageAtom.reportObserved();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.context
        .checkIfStateModificationsAreAllowed(_$errorMessageAtom);
    super.errorMessage = value;
    _$errorMessageAtom.reportChanged();
  }

  final _$checkIsLoggedAsyncAction = AsyncAction('checkIsLogged');

  @override
  Future<void> checkIsLogged() {
    return _$checkIsLoggedAsyncAction.run(() => super.checkIsLogged());
  }
}
