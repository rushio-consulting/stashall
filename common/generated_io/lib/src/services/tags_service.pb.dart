///
//  Generated code. Do not modify.
//  source: services/tags_service.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

class CreateTagRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateTagRequest', package: const $pb.PackageName('stashall'))
    ..aOS(1, 'label')
    ..aOS(2, 'color')
    ..hasRequiredFields = false
  ;

  CreateTagRequest() : super();
  CreateTagRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateTagRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateTagRequest clone() => new CreateTagRequest()..mergeFromMessage(this);
  CreateTagRequest copyWith(void Function(CreateTagRequest) updates) => super.copyWith((message) => updates(message as CreateTagRequest));
  $pb.BuilderInfo get info_ => _i;
  static CreateTagRequest create() => new CreateTagRequest();
  CreateTagRequest createEmptyInstance() => create();
  static $pb.PbList<CreateTagRequest> createRepeated() => new $pb.PbList<CreateTagRequest>();
  static CreateTagRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CreateTagRequest _defaultInstance;
  static void $checkItem(CreateTagRequest v) {
    if (v is! CreateTagRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get label => $_getS(0, '');
  set label(String v) { $_setString(0, v); }
  bool hasLabel() => $_has(0);
  void clearLabel() => clearField(1);

  String get color => $_getS(1, '');
  set color(String v) { $_setString(1, v); }
  bool hasColor() => $_has(1);
  void clearColor() => clearField(2);
}

class DeleteTagRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteTagRequest', package: const $pb.PackageName('stashall'))
    ..aOS(1, 'id')
    ..hasRequiredFields = false
  ;

  DeleteTagRequest() : super();
  DeleteTagRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteTagRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteTagRequest clone() => new DeleteTagRequest()..mergeFromMessage(this);
  DeleteTagRequest copyWith(void Function(DeleteTagRequest) updates) => super.copyWith((message) => updates(message as DeleteTagRequest));
  $pb.BuilderInfo get info_ => _i;
  static DeleteTagRequest create() => new DeleteTagRequest();
  DeleteTagRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteTagRequest> createRepeated() => new $pb.PbList<DeleteTagRequest>();
  static DeleteTagRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteTagRequest _defaultInstance;
  static void $checkItem(DeleteTagRequest v) {
    if (v is! DeleteTagRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

