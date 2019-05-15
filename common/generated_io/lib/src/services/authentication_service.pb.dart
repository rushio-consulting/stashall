///
//  Generated code. Do not modify.
//  source: services/authentication_service.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

class SigninRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('SigninRequest', package: const $pb.PackageName('stashall'))
    ..aOS(1, 'email')
    ..aOS(2, 'password')
    ..hasRequiredFields = false
  ;

  SigninRequest() : super();
  SigninRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  SigninRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  SigninRequest clone() => new SigninRequest()..mergeFromMessage(this);
  SigninRequest copyWith(void Function(SigninRequest) updates) => super.copyWith((message) => updates(message as SigninRequest));
  $pb.BuilderInfo get info_ => _i;
  static SigninRequest create() => new SigninRequest();
  SigninRequest createEmptyInstance() => create();
  static $pb.PbList<SigninRequest> createRepeated() => new $pb.PbList<SigninRequest>();
  static SigninRequest getDefault() => _defaultInstance ??= create()..freeze();
  static SigninRequest _defaultInstance;
  static void $checkItem(SigninRequest v) {
    if (v is! SigninRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get email => $_getS(0, '');
  set email(String v) { $_setString(0, v); }
  bool hasEmail() => $_has(0);
  void clearEmail() => clearField(1);

  String get password => $_getS(1, '');
  set password(String v) { $_setString(1, v); }
  bool hasPassword() => $_has(1);
  void clearPassword() => clearField(2);
}

