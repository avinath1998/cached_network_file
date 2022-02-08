import 'dart:io';
import 'package:file/file.dart';
import 'package:cached_network_file/cached_network_file.dart';
import 'package:cached_network_file/src/cached_network_file_state.dart';
import 'package:file/src/backends/local/local_file.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'cached_file_bloc_test.mocks.dart';

class MockCallback {
  int _callCounter = 0;
  void call() {
    _callCounter += 1;
  }

  bool called(int expected) => _callCounter == expected;
  void reset() {
    _callCounter = 0;
  }
}

@GenerateMocks([File, FileInfo, CacheManager])
void main() {
  final mockFile = MockFile();
  final mockFileInfo = MockFileInfo();
  final mockCacheManager = MockCacheManager();

  group("CachedFileBloc Tests", () {
    group("Normal Behaviour", () {
      test("calls listeenr after downloading and storing file", () async {
        when(mockCacheManager.getSingleFile(any))
            .thenAnswer((realInvocation) async => mockFile);
        final cachedNetworkFileBloc =
            CachedNetworkFileBloc(mockCacheManager, "www.dummyurl.com");
        final callback = MockCallback();
        cachedNetworkFileBloc.addFileDownloadedListener((value) {
          callback.call();
        });
        await cachedNetworkFileBloc.downloadAndStore();
        expect(callback.called(1), true);
      });
      test(
          "emits a state of LoadedCachedFileState after downloading and storing file",
          () async {
        when(mockCacheManager.getSingleFile("www.dummyurl.com"))
            .thenAnswer((realInvocation) async => mockFile);
        final cachedNetworkFileBloc =
            CachedNetworkFileBloc(mockCacheManager, "www.dummyurl.com");
        await cachedNetworkFileBloc.downloadAndStore();
        expect(cachedNetworkFileBloc.cachedFile,
            emits(LoadedCachedFileState(file: mockFile)));
      });

      test(
          "emits a state of LoadedCachedFileState after loading file from cache",
          () async {
        when(mockCacheManager.getFileFromCache("www.dummyurl.com"))
            .thenAnswer((realInvocation) async => mockFileInfo);
        when(mockFileInfo.file).thenAnswer((realInvocation) => mockFile);
        final cachedNetworkFileBloc =
            CachedNetworkFileBloc(mockCacheManager, "www.dummyurl.com");
        await cachedNetworkFileBloc.loadFileFromCache();
        expect(cachedNetworkFileBloc.cachedFile,
            emits(LoadedCachedFileState(file: mockFileInfo.file)));
      });

      test(
          "emits a state of LoadedCachedFileState with no File after deleting file from cache",
          () async {
        final cachedNetworkFileBloc =
            CachedNetworkFileBloc(mockCacheManager, "www.dummyurl.com");
        await cachedNetworkFileBloc.deleteFileFromCache("dummyurl");
        expect(
            cachedNetworkFileBloc.cachedFile, emits(LoadedCachedFileState()));
      });
    });

    group("Edge cases", () {
      test(
          "emits a state of ErrorCachedFileState if an"
          "exception is thrown while downloading and storing file.", () async {
        when(mockCacheManager.getSingleFile("www.dummyurl.com"))
            .thenThrow(Exception());
        final cachedNetworkFileBloc =
            CachedNetworkFileBloc(mockCacheManager, "www.dummyurl.com");
        await cachedNetworkFileBloc.downloadAndStore();
        expect(cachedNetworkFileBloc.cachedFile,
            emitsError(isInstanceOf<ErrorCachedFileState>()));
      });

      test(
          "emits a state of ErrorCachedFileState if an"
          "exception is thrown loading file from cache.", () async {
        when(mockCacheManager.getFileFromCache("www.dummyurl.com"))
            .thenThrow(Exception());
        final cachedNetworkFileBloc =
            CachedNetworkFileBloc(mockCacheManager, "www.dummyurl.com");
        await cachedNetworkFileBloc.loadFileFromCache();
        expect(cachedNetworkFileBloc.cachedFile,
            emitsError(isInstanceOf<ErrorCachedFileState>()));
      });

      test(
          "emits a state of ErrorCachedFileState if an"
          "exception is thrown deleting file from cache.", () async {
        when(mockCacheManager.removeFile("www.dummyurl.com"))
            .thenThrow(Exception());
        final cachedNetworkFileBloc =
            CachedNetworkFileBloc(mockCacheManager, "www.dummyurl.com");
        await cachedNetworkFileBloc.deleteFileFromCache("www.dummyurl.com");
        expect(cachedNetworkFileBloc.cachedFile,
            emitsError(isInstanceOf<ErrorCachedFileState>()));
      });
    });
  });
}
