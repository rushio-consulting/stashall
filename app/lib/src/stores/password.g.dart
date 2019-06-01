// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$PasswordsStore on PasswordsStoreBase, Store {
  final _$passwordsAtom = Atom(name: 'PasswordsStoreBase.passwords');

  @override
  ObservableList<Password> get passwords {
    _$passwordsAtom.reportObserved();
    return super.passwords;
  }

  @override
  set passwords(ObservableList<Password> value) {
    _$passwordsAtom.context
        .checkIfStateModificationsAreAllowed(_$passwordsAtom);
    super.passwords = value;
    _$passwordsAtom.reportChanged();
  }
}
