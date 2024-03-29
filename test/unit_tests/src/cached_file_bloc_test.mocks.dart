// Mocks generated by Mockito 5.0.17 from annotations
// in cached_network_file/test/unit_tests/src/cached_file_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i10;
import 'dart:convert' as _i11;
import 'dart:io' as _i6;
import 'dart:typed_data' as _i12;

import 'package:file/file.dart' as _i2;
import 'package:file/src/interface/directory.dart' as _i4;
import 'package:file/src/interface/file_system.dart' as _i3;
import 'package:file/src/interface/file_system_entity.dart' as _i5;
import 'package:flutter_cache_manager/flutter_cache_manager.dart' as _i9;
import 'package:flutter_cache_manager/src/cache_store.dart' as _i7;
import 'package:flutter_cache_manager/src/result/file_response.dart' as _i13;
import 'package:flutter_cache_manager/src/web/web_helper.dart' as _i8;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeFile_0 extends _i1.Fake implements _i2.File {}

class _FakeFileSystem_1 extends _i1.Fake implements _i3.FileSystem {}

class _FakeDirectory_2 extends _i1.Fake implements _i4.Directory {}

class _FakeUri_3 extends _i1.Fake implements Uri {}

class _FakeFileSystemEntity_4 extends _i1.Fake implements _i5.FileSystemEntity {
}

class _FakeFileStat_5 extends _i1.Fake implements _i6.FileStat {}

class _FakeDateTime_6 extends _i1.Fake implements DateTime {}

class _FakeRandomAccessFile_7 extends _i1.Fake implements _i6.RandomAccessFile {
}

class _FakeIOSink_8 extends _i1.Fake implements _i6.IOSink {}

class _FakeCacheStore_9 extends _i1.Fake implements _i7.CacheStore {}

class _FakeWebHelper_10 extends _i1.Fake implements _i8.WebHelper {}

class _FakeFileInfo_11 extends _i1.Fake implements _i9.FileInfo {}

/// A class which mocks [File].
///
/// See the documentation for Mockito's code generation for more information.
class MockFile extends _i1.Mock implements _i2.File {
  MockFile() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.File get absolute => (super.noSuchMethod(Invocation.getter(#absolute),
      returnValue: _FakeFile_0()) as _i2.File);
  @override
  _i3.FileSystem get fileSystem =>
      (super.noSuchMethod(Invocation.getter(#fileSystem),
          returnValue: _FakeFileSystem_1()) as _i3.FileSystem);
  @override
  String get basename =>
      (super.noSuchMethod(Invocation.getter(#basename), returnValue: '')
          as String);
  @override
  String get dirname =>
      (super.noSuchMethod(Invocation.getter(#dirname), returnValue: '')
          as String);
  @override
  _i4.Directory get parent => (super.noSuchMethod(Invocation.getter(#parent),
      returnValue: _FakeDirectory_2()) as _i4.Directory);
  @override
  String get path =>
      (super.noSuchMethod(Invocation.getter(#path), returnValue: '') as String);
  @override
  Uri get uri =>
      (super.noSuchMethod(Invocation.getter(#uri), returnValue: _FakeUri_3())
          as Uri);
  @override
  bool get isAbsolute =>
      (super.noSuchMethod(Invocation.getter(#isAbsolute), returnValue: false)
          as bool);
  @override
  _i10.Future<_i2.File> create({bool? recursive = false}) => (super
          .noSuchMethod(Invocation.method(#create, [], {#recursive: recursive}),
              returnValue: Future<_i2.File>.value(_FakeFile_0()))
      as _i10.Future<_i2.File>);
  @override
  _i10.Future<_i2.File> rename(String? newPath) =>
      (super.noSuchMethod(Invocation.method(#rename, [newPath]),
              returnValue: Future<_i2.File>.value(_FakeFile_0()))
          as _i10.Future<_i2.File>);
  @override
  _i2.File renameSync(String? newPath) =>
      (super.noSuchMethod(Invocation.method(#renameSync, [newPath]),
          returnValue: _FakeFile_0()) as _i2.File);
  @override
  _i10.Future<_i2.File> copy(String? newPath) =>
      (super.noSuchMethod(Invocation.method(#copy, [newPath]),
              returnValue: Future<_i2.File>.value(_FakeFile_0()))
          as _i10.Future<_i2.File>);
  @override
  _i2.File copySync(String? newPath) =>
      (super.noSuchMethod(Invocation.method(#copySync, [newPath]),
          returnValue: _FakeFile_0()) as _i2.File);
  @override
  _i10.Future<_i2.File> writeAsBytes(List<int>? bytes,
          {_i6.FileMode? mode = _i6.FileMode.write, bool? flush = false}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #writeAsBytes, [bytes], {#mode: mode, #flush: flush}),
              returnValue: Future<_i2.File>.value(_FakeFile_0()))
          as _i10.Future<_i2.File>);
  @override
  _i10.Future<_i2.File> writeAsString(String? contents,
          {_i6.FileMode? mode = _i6.FileMode.write,
          _i11.Encoding? encoding = const _i11.Utf8Codec(),
          bool? flush = false}) =>
      (super.noSuchMethod(
              Invocation.method(#writeAsString, [contents],
                  {#mode: mode, #encoding: encoding, #flush: flush}),
              returnValue: Future<_i2.File>.value(_FakeFile_0()))
          as _i10.Future<_i2.File>);
  @override
  _i10.Future<_i5.FileSystemEntity> delete({bool? recursive = false}) => (super
          .noSuchMethod(Invocation.method(#delete, [], {#recursive: recursive}),
              returnValue:
                  Future<_i5.FileSystemEntity>.value(_FakeFileSystemEntity_4()))
      as _i10.Future<_i5.FileSystemEntity>);
  @override
  _i10.Future<bool> exists() =>
      (super.noSuchMethod(Invocation.method(#exists, []),
          returnValue: Future<bool>.value(false)) as _i10.Future<bool>);
  @override
  bool existsSync() => (super.noSuchMethod(Invocation.method(#existsSync, []),
      returnValue: false) as bool);
  @override
  _i10.Future<String> resolveSymbolicLinks() =>
      (super.noSuchMethod(Invocation.method(#resolveSymbolicLinks, []),
          returnValue: Future<String>.value('')) as _i10.Future<String>);
  @override
  String resolveSymbolicLinksSync() =>
      (super.noSuchMethod(Invocation.method(#resolveSymbolicLinksSync, []),
          returnValue: '') as String);
  @override
  _i10.Future<_i6.FileStat> stat() =>
      (super.noSuchMethod(Invocation.method(#stat, []),
              returnValue: Future<_i6.FileStat>.value(_FakeFileStat_5()))
          as _i10.Future<_i6.FileStat>);
  @override
  _i6.FileStat statSync() =>
      (super.noSuchMethod(Invocation.method(#statSync, []),
          returnValue: _FakeFileStat_5()) as _i6.FileStat);
  @override
  void deleteSync({bool? recursive = false}) => super.noSuchMethod(
      Invocation.method(#deleteSync, [], {#recursive: recursive}),
      returnValueForMissingStub: null);
  @override
  _i10.Stream<_i6.FileSystemEvent> watch(
          {int? events = 15, bool? recursive = false}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #watch, [], {#events: events, #recursive: recursive}),
              returnValue: Stream<_i6.FileSystemEvent>.empty())
          as _i10.Stream<_i6.FileSystemEvent>);
  @override
  void createSync({bool? recursive = false}) => super.noSuchMethod(
      Invocation.method(#createSync, [], {#recursive: recursive}),
      returnValueForMissingStub: null);
  @override
  _i10.Future<int> length() =>
      (super.noSuchMethod(Invocation.method(#length, []),
          returnValue: Future<int>.value(0)) as _i10.Future<int>);
  @override
  int lengthSync() =>
      (super.noSuchMethod(Invocation.method(#lengthSync, []), returnValue: 0)
          as int);
  @override
  _i10.Future<DateTime> lastAccessed() =>
      (super.noSuchMethod(Invocation.method(#lastAccessed, []),
              returnValue: Future<DateTime>.value(_FakeDateTime_6()))
          as _i10.Future<DateTime>);
  @override
  DateTime lastAccessedSync() =>
      (super.noSuchMethod(Invocation.method(#lastAccessedSync, []),
          returnValue: _FakeDateTime_6()) as DateTime);
  @override
  _i10.Future<dynamic> setLastAccessed(DateTime? time) =>
      (super.noSuchMethod(Invocation.method(#setLastAccessed, [time]),
          returnValue: Future<dynamic>.value()) as _i10.Future<dynamic>);
  @override
  void setLastAccessedSync(DateTime? time) =>
      super.noSuchMethod(Invocation.method(#setLastAccessedSync, [time]),
          returnValueForMissingStub: null);
  @override
  _i10.Future<DateTime> lastModified() =>
      (super.noSuchMethod(Invocation.method(#lastModified, []),
              returnValue: Future<DateTime>.value(_FakeDateTime_6()))
          as _i10.Future<DateTime>);
  @override
  DateTime lastModifiedSync() =>
      (super.noSuchMethod(Invocation.method(#lastModifiedSync, []),
          returnValue: _FakeDateTime_6()) as DateTime);
  @override
  _i10.Future<dynamic> setLastModified(DateTime? time) =>
      (super.noSuchMethod(Invocation.method(#setLastModified, [time]),
          returnValue: Future<dynamic>.value()) as _i10.Future<dynamic>);
  @override
  void setLastModifiedSync(DateTime? time) =>
      super.noSuchMethod(Invocation.method(#setLastModifiedSync, [time]),
          returnValueForMissingStub: null);
  @override
  _i10.Future<_i6.RandomAccessFile> open(
          {_i6.FileMode? mode = _i6.FileMode.read}) =>
      (super.noSuchMethod(Invocation.method(#open, [], {#mode: mode}),
              returnValue:
                  Future<_i6.RandomAccessFile>.value(_FakeRandomAccessFile_7()))
          as _i10.Future<_i6.RandomAccessFile>);
  @override
  _i6.RandomAccessFile openSync({_i6.FileMode? mode = _i6.FileMode.read}) =>
      (super.noSuchMethod(Invocation.method(#openSync, [], {#mode: mode}),
          returnValue: _FakeRandomAccessFile_7()) as _i6.RandomAccessFile);
  @override
  _i10.Stream<List<int>> openRead([int? start, int? end]) =>
      (super.noSuchMethod(Invocation.method(#openRead, [start, end]),
          returnValue: Stream<List<int>>.empty()) as _i10.Stream<List<int>>);
  @override
  _i6.IOSink openWrite(
          {_i6.FileMode? mode = _i6.FileMode.write,
          _i11.Encoding? encoding = const _i11.Utf8Codec()}) =>
      (super.noSuchMethod(
          Invocation.method(#openWrite, [], {#mode: mode, #encoding: encoding}),
          returnValue: _FakeIOSink_8()) as _i6.IOSink);
  @override
  _i10.Future<_i12.Uint8List> readAsBytes() =>
      (super.noSuchMethod(Invocation.method(#readAsBytes, []),
              returnValue: Future<_i12.Uint8List>.value(_i12.Uint8List(0)))
          as _i10.Future<_i12.Uint8List>);
  @override
  _i12.Uint8List readAsBytesSync() =>
      (super.noSuchMethod(Invocation.method(#readAsBytesSync, []),
          returnValue: _i12.Uint8List(0)) as _i12.Uint8List);
  @override
  _i10.Future<String> readAsString(
          {_i11.Encoding? encoding = const _i11.Utf8Codec()}) =>
      (super.noSuchMethod(
          Invocation.method(#readAsString, [], {#encoding: encoding}),
          returnValue: Future<String>.value('')) as _i10.Future<String>);
  @override
  String readAsStringSync({_i11.Encoding? encoding = const _i11.Utf8Codec()}) =>
      (super.noSuchMethod(
          Invocation.method(#readAsStringSync, [], {#encoding: encoding}),
          returnValue: '') as String);
  @override
  _i10.Future<List<String>> readAsLines(
          {_i11.Encoding? encoding = const _i11.Utf8Codec()}) =>
      (super.noSuchMethod(
              Invocation.method(#readAsLines, [], {#encoding: encoding}),
              returnValue: Future<List<String>>.value(<String>[]))
          as _i10.Future<List<String>>);
  @override
  List<String> readAsLinesSync(
          {_i11.Encoding? encoding = const _i11.Utf8Codec()}) =>
      (super.noSuchMethod(
          Invocation.method(#readAsLinesSync, [], {#encoding: encoding}),
          returnValue: <String>[]) as List<String>);
  @override
  void writeAsBytesSync(List<int>? bytes,
          {_i6.FileMode? mode = _i6.FileMode.write, bool? flush = false}) =>
      super.noSuchMethod(
          Invocation.method(
              #writeAsBytesSync, [bytes], {#mode: mode, #flush: flush}),
          returnValueForMissingStub: null);
  @override
  void writeAsStringSync(String? contents,
          {_i6.FileMode? mode = _i6.FileMode.write,
          _i11.Encoding? encoding = const _i11.Utf8Codec(),
          bool? flush = false}) =>
      super.noSuchMethod(
          Invocation.method(#writeAsStringSync, [contents],
              {#mode: mode, #encoding: encoding, #flush: flush}),
          returnValueForMissingStub: null);
}

/// A class which mocks [FileInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockFileInfo extends _i1.Mock implements _i9.FileInfo {
  MockFileInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.File get file =>
      (super.noSuchMethod(Invocation.getter(#file), returnValue: _FakeFile_0())
          as _i2.File);
  @override
  _i9.FileSource get source => (super.noSuchMethod(Invocation.getter(#source),
      returnValue: _i9.FileSource.NA) as _i9.FileSource);
  @override
  DateTime get validTill => (super.noSuchMethod(Invocation.getter(#validTill),
      returnValue: _FakeDateTime_6()) as DateTime);
  @override
  String get originalUrl =>
      (super.noSuchMethod(Invocation.getter(#originalUrl), returnValue: '')
          as String);
}

/// A class which mocks [CacheManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockCacheManager extends _i1.Mock implements _i9.CacheManager {
  MockCacheManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.CacheStore get store => (super.noSuchMethod(Invocation.getter(#store),
      returnValue: _FakeCacheStore_9()) as _i7.CacheStore);
  @override
  _i8.WebHelper get webHelper =>
      (super.noSuchMethod(Invocation.getter(#webHelper),
          returnValue: _FakeWebHelper_10()) as _i8.WebHelper);
  @override
  _i10.Future<_i2.File> getSingleFile(String? url,
          {String? key, Map<String, String>? headers}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #getSingleFile, [url], {#key: key, #headers: headers}),
              returnValue: Future<_i2.File>.value(_FakeFile_0()))
          as _i10.Future<_i2.File>);
  @override
  _i10.Stream<_i9.FileInfo> getFile(String? url,
          {String? key, Map<String, String>? headers}) =>
      (super.noSuchMethod(
          Invocation.method(#getFile, [url], {#key: key, #headers: headers}),
          returnValue:
              Stream<_i9.FileInfo>.empty()) as _i10.Stream<_i9.FileInfo>);
  @override
  _i10.Stream<_i13.FileResponse> getFileStream(String? url,
          {String? key,
          Map<String, String>? headers,
          bool? withProgress = false}) =>
      (super.noSuchMethod(
              Invocation.method(#getFileStream, [url],
                  {#key: key, #headers: headers, #withProgress: withProgress}),
              returnValue: Stream<_i13.FileResponse>.empty())
          as _i10.Stream<_i13.FileResponse>);
  @override
  _i10.Future<_i9.FileInfo> downloadFile(String? url,
          {String? key,
          Map<String, String>? authHeaders,
          bool? force = false}) =>
      (super.noSuchMethod(
              Invocation.method(#downloadFile, [url],
                  {#key: key, #authHeaders: authHeaders, #force: force}),
              returnValue: Future<_i9.FileInfo>.value(_FakeFileInfo_11()))
          as _i10.Future<_i9.FileInfo>);
  @override
  _i10.Future<_i9.FileInfo?> getFileFromCache(String? key,
          {bool? ignoreMemCache = false}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #getFileFromCache, [key], {#ignoreMemCache: ignoreMemCache}),
              returnValue: Future<_i9.FileInfo?>.value())
          as _i10.Future<_i9.FileInfo?>);
  @override
  _i10.Future<_i9.FileInfo?> getFileFromMemory(String? key) =>
      (super.noSuchMethod(Invocation.method(#getFileFromMemory, [key]),
              returnValue: Future<_i9.FileInfo?>.value())
          as _i10.Future<_i9.FileInfo?>);
  @override
  _i10.Future<_i2.File> putFile(String? url, _i12.Uint8List? fileBytes,
          {String? key,
          String? eTag,
          Duration? maxAge = const Duration(days: 30),
          String? fileExtension = r'file'}) =>
      (super.noSuchMethod(
              Invocation.method(#putFile, [
                url,
                fileBytes
              ], {
                #key: key,
                #eTag: eTag,
                #maxAge: maxAge,
                #fileExtension: fileExtension
              }),
              returnValue: Future<_i2.File>.value(_FakeFile_0()))
          as _i10.Future<_i2.File>);
  @override
  _i10.Future<_i2.File> putFileStream(
          String? url, _i10.Stream<List<int>>? source,
          {String? key,
          String? eTag,
          Duration? maxAge = const Duration(days: 30),
          String? fileExtension = r'file'}) =>
      (super.noSuchMethod(
              Invocation.method(#putFileStream, [
                url,
                source
              ], {
                #key: key,
                #eTag: eTag,
                #maxAge: maxAge,
                #fileExtension: fileExtension
              }),
              returnValue: Future<_i2.File>.value(_FakeFile_0()))
          as _i10.Future<_i2.File>);
  @override
  _i10.Future<void> removeFile(String? key) => (super.noSuchMethod(
      Invocation.method(#removeFile, [key]),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i10.Future<void>);
  @override
  _i10.Future<void> emptyCache() => (super.noSuchMethod(
      Invocation.method(#emptyCache, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i10.Future<void>);
  @override
  _i10.Future<void> dispose() => (super.noSuchMethod(
      Invocation.method(#dispose, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i10.Future<void>);
}
