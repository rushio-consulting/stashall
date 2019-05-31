///
//  Generated code. Do not modify.
//  source: services/passwords_service.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

class CreatePasswordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreatePasswordRequest', package: const $pb.PackageName('stashall'))
    ..aOS(1, 'login')
    ..aOS(2, 'password')
    ..hasRequiredFields = false
  ;

  CreatePasswordRequest() : super();
  CreatePasswordRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreatePasswordRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreatePasswordRequest clone() => new CreatePasswordRequest()..mergeFromMessage(this);
  CreatePasswordRequest copyWith(void Function(CreatePasswordRequest) updates) => super.copyWith((message) => updates(message as CreatePasswordRequest));
  $pb.BuilderInfo get info_ => _i;
  static CreatePasswordRequest create() => new CreatePasswordRequest();
  CreatePasswordRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePasswordRequest> createRepeated() => new $pb.PbList<CreatePasswordRequest>();
  static CreatePasswordRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CreatePasswordRequest _defaultInstance;
  static void $checkItem(CreatePasswordRequest v) {
    if (v is! CreatePasswordRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get login => $_getS(0, '');
  set login(String v) { $_setString(0, v); }
  bool hasLogin() => $_has(0);
  void clearLogin() => clearField(1);

  String get password => $_getS(1, '');
  set password(String v) { $_setString(1, v); }
  bool hasPassword() => $_has(1);
  void clearPassword() => clearField(2);
}

