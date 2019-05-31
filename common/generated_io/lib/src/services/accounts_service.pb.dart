///
//  Generated code. Do not modify.
//  source: services/accounts_service.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

class CreateAccountRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateAccountRequest', package: const $pb.PackageName('stashall'))
    ..aOS(1, 'email')
    ..aOS(2, 'password')
    ..hasRequiredFields = false
  ;

  CreateAccountRequest() : super();
  CreateAccountRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateAccountRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateAccountRequest clone() => new CreateAccountRequest()..mergeFromMessage(this);
  CreateAccountRequest copyWith(void Function(CreateAccountRequest) updates) => super.copyWith((message) => updates(message as CreateAccountRequest));
  $pb.BuilderInfo get info_ => _i;
  static CreateAccountRequest create() => new CreateAccountRequest();
  CreateAccountRequest createEmptyInstance() => create();
  static $pb.PbList<CreateAccountRequest> createRepeated() => new $pb.PbList<CreateAccountRequest>();
  static CreateAccountRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CreateAccountRequest _defaultInstance;
  static void $checkItem(CreateAccountRequest v) {
    if (v is! CreateAccountRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
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

class MeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MeResponse', package: const $pb.PackageName('stashall'))
    ..aOS(1, 'email')
    ..hasRequiredFields = false
  ;

  MeResponse() : super();
  MeResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MeResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MeResponse clone() => new MeResponse()..mergeFromMessage(this);
  MeResponse copyWith(void Function(MeResponse) updates) => super.copyWith((message) => updates(message as MeResponse));
  $pb.BuilderInfo get info_ => _i;
  static MeResponse create() => new MeResponse();
  MeResponse createEmptyInstance() => create();
  static $pb.PbList<MeResponse> createRepeated() => new $pb.PbList<MeResponse>();
  static MeResponse getDefault() => _defaultInstance ??= create()..freeze();
  static MeResponse _defaultInstance;
  static void $checkItem(MeResponse v) {
    if (v is! MeResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get email => $_getS(0, '');
  set email(String v) { $_setString(0, v); }
  bool hasEmail() => $_has(0);
  void clearEmail() => clearField(1);
}

