// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$ServerStore on ServerStoreBase, Store {
  final _$hostAtom = Atom(name: 'ServerStoreBase.host');

  @override
  String get host {
    _$hostAtom.reportObserved();
    return super.host;
  }

  @override
  set host(String value) {
    _$hostAtom.context.checkIfStateModificationsAreAllowed(_$hostAtom);
    super.host = value;
    _$hostAtom.reportChanged();
  }

  final _$portAtom = Atom(name: 'ServerStoreBase.port');

  @override
  int get port {
    _$portAtom.reportObserved();
    return super.port;
  }

  @override
  set port(int value) {
    _$portAtom.context.checkIfStateModificationsAreAllowed(_$portAtom);
    super.port = value;
    _$portAtom.reportChanged();
  }

  final _$channelAtom = Atom(name: 'ServerStoreBase.channel');

  @override
  ClientChannel get channel {
    _$channelAtom.reportObserved();
    return super.channel;
  }

  @override
  set channel(ClientChannel value) {
    _$channelAtom.context.checkIfStateModificationsAreAllowed(_$channelAtom);
    super.channel = value;
    _$channelAtom.reportChanged();
  }
}
