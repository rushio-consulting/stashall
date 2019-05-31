///
//  Generated code. Do not modify.
//  source: models/tag.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

class Tag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Tag', package: const $pb.PackageName('stashall'))
    ..aOS(1, 'id')
    ..aOS(2, 'label')
    ..aOS(3, 'description')
    ..aOS(4, 'color')
    ..hasRequiredFields = false
  ;

  Tag() : super();
  Tag.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Tag.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Tag clone() => new Tag()..mergeFromMessage(this);
  Tag copyWith(void Function(Tag) updates) => super.copyWith((message) => updates(message as Tag));
  $pb.BuilderInfo get info_ => _i;
  static Tag create() => new Tag();
  Tag createEmptyInstance() => create();
  static $pb.PbList<Tag> createRepeated() => new $pb.PbList<Tag>();
  static Tag getDefault() => _defaultInstance ??= create()..freeze();
  static Tag _defaultInstance;
  static void $checkItem(Tag v) {
    if (v is! Tag) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get label => $_getS(1, '');
  set label(String v) { $_setString(1, v); }
  bool hasLabel() => $_has(1);
  void clearLabel() => clearField(2);

  String get description => $_getS(2, '');
  set description(String v) { $_setString(2, v); }
  bool hasDescription() => $_has(2);
  void clearDescription() => clearField(3);

  String get color => $_getS(3, '');
  set color(String v) { $_setString(3, v); }
  bool hasColor() => $_has(3);
  void clearColor() => clearField(4);
}

