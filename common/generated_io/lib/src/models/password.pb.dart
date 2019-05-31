///
//  Generated code. Do not modify.
//  source: models/password.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

import 'tag.pb.dart' as $2;

class Password extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Password', package: const $pb.PackageName('stashall'))
    ..aOS(1, 'id')
    ..aOS(2, 'login')
    ..aOS(3, 'encryptedPassword')
    ..pp<$2.Tag>(4, 'tags', $pb.PbFieldType.PM, $2.Tag.$checkItem, $2.Tag.create)
    ..aOS(5, 'description')
    ..aOS(6, 'url')
    ..hasRequiredFields = false
  ;

  Password() : super();
  Password.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Password.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Password clone() => new Password()..mergeFromMessage(this);
  Password copyWith(void Function(Password) updates) => super.copyWith((message) => updates(message as Password));
  $pb.BuilderInfo get info_ => _i;
  static Password create() => new Password();
  Password createEmptyInstance() => create();
  static $pb.PbList<Password> createRepeated() => new $pb.PbList<Password>();
  static Password getDefault() => _defaultInstance ??= create()..freeze();
  static Password _defaultInstance;
  static void $checkItem(Password v) {
    if (v is! Password) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get login => $_getS(1, '');
  set login(String v) { $_setString(1, v); }
  bool hasLogin() => $_has(1);
  void clearLogin() => clearField(2);

  String get encryptedPassword => $_getS(2, '');
  set encryptedPassword(String v) { $_setString(2, v); }
  bool hasEncryptedPassword() => $_has(2);
  void clearEncryptedPassword() => clearField(3);

  List<$2.Tag> get tags => $_getList(3);

  String get description => $_getS(4, '');
  set description(String v) { $_setString(4, v); }
  bool hasDescription() => $_has(4);
  void clearDescription() => clearField(5);

  String get url => $_getS(5, '');
  set url(String v) { $_setString(5, v); }
  bool hasUrl() => $_has(5);
  void clearUrl() => clearField(6);
}

