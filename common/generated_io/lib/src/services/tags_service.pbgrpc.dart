///
//  Generated code. Do not modify.
//  source: services/tags_service.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/grpc.dart';

import 'tags_service.pb.dart';
import '../models/tag.pb.dart' as $2;
import '../google/protobuf/empty.pb.dart' as $0;
export 'tags_service.pb.dart';

class TagsServiceClient extends Client {
  static final _$createTag = new ClientMethod<CreateTagRequest, $2.Tag>(
      '/stashall.TagsService/createTag',
      (CreateTagRequest value) => value.writeToBuffer(),
      (List<int> value) => new $2.Tag.fromBuffer(value));
  static final _$editTag = new ClientMethod<$2.Tag, $0.Empty>(
      '/stashall.TagsService/editTag',
      ($2.Tag value) => value.writeToBuffer(),
      (List<int> value) => new $0.Empty.fromBuffer(value));
  static final _$deleteTag = new ClientMethod<DeleteTagRequest, $0.Empty>(
      '/stashall.TagsService/deleteTag',
      (DeleteTagRequest value) => value.writeToBuffer(),
      (List<int> value) => new $0.Empty.fromBuffer(value));

  TagsServiceClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseFuture<$2.Tag> createTag(CreateTagRequest request,
      {CallOptions options}) {
    final call = $createCall(
        _$createTag, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }

  ResponseFuture<$0.Empty> editTag($2.Tag request, {CallOptions options}) {
    final call = $createCall(
        _$editTag, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }

  ResponseFuture<$0.Empty> deleteTag(DeleteTagRequest request,
      {CallOptions options}) {
    final call = $createCall(
        _$deleteTag, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }
}

abstract class TagsServiceBase extends Service {
  String get $name => 'stashall.TagsService';

  TagsServiceBase() {
    $addMethod(new ServiceMethod<CreateTagRequest, $2.Tag>(
        'createTag',
        createTag_Pre,
        false,
        false,
        (List<int> value) => new CreateTagRequest.fromBuffer(value),
        ($2.Tag value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<$2.Tag, $0.Empty>(
        'editTag',
        editTag_Pre,
        false,
        false,
        (List<int> value) => new $2.Tag.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<DeleteTagRequest, $0.Empty>(
        'deleteTag',
        deleteTag_Pre,
        false,
        false,
        (List<int> value) => new DeleteTagRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$2.Tag> createTag_Pre(
      ServiceCall call, $async.Future request) async {
    return createTag(call, await request);
  }

  $async.Future<$0.Empty> editTag_Pre(
      ServiceCall call, $async.Future request) async {
    return editTag(call, await request);
  }

  $async.Future<$0.Empty> deleteTag_Pre(
      ServiceCall call, $async.Future request) async {
    return deleteTag(call, await request);
  }

  $async.Future<$2.Tag> createTag(ServiceCall call, CreateTagRequest request);
  $async.Future<$0.Empty> editTag(ServiceCall call, $2.Tag request);
  $async.Future<$0.Empty> deleteTag(ServiceCall call, DeleteTagRequest request);
}
