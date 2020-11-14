import 'package:cached_network_file/cached_network_file.dart';
import 'package:cached_network_file/src/cached_network_file_state.dart';
import 'package:file/src/backends/local/local_file.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockCacheManager extends Mock implements CacheManager {}

class MockFile extends Mock implements LocalFile {}

class MockFileInfo extends Mock implements FileInfo {}

void main() {
  group("CachedFileBloc Tests", () {
    final mockCacheManager = MockCacheManager();
    final mockFile = MockFile();
    final mockFileInfo = MockFileInfo();

    group("Normal Behaviour", () {
      test(
          "emits a state of LoadedCachedFileState after downloading and storing file",
          () async {
        when(mockCacheManager.getSingleFile(any))
            .thenAnswer((realInvocation) async => mockFile);
        final cachedNetworkFileBloc =
            CachedNetworkFileBloc(mockCacheManager, "www.dummyurl.com");
        await cachedNetworkFileBloc.downloadAndStore();
        expect(cachedNetworkFileBloc.cachedFile,
            emits(LoadedCachedFileState(mockFile)));
      });

      test(
          "emits a state of LoadedCachedFileState after loading file from cache",
          () async {
        when(mockCacheManager.getFileFromCache(any))
            .thenAnswer((realInvocation) async => mockFileInfo);
        final cachedNetworkFileBloc =
            CachedNetworkFileBloc(mockCacheManager, "www.dummyurl.com");
        await cachedNetworkFileBloc.loadFileFromCache();
        expect(cachedNetworkFileBloc.cachedFile,
            emits(LoadedCachedFileState(mockFileInfo.file)));
      });

      test(
          "emits a state of LoadedCachedFileState with no File after deleting file from cache",
          () async {
        final cachedNetworkFileBloc =
            CachedNetworkFileBloc(mockCacheManager, "www.dummyurl.com");
        await cachedNetworkFileBloc.deleteFileFromCache("dummyurl");
        expect(cachedNetworkFileBloc.cachedFile,
            emits(LoadedCachedFileState(null)));
      });
    });

    group("Edge cases", () {
      test(
          "emits a state of ErrorCachedFileState if an"
          "exception is thrown while downloading and storing file.", () async {
        when(mockCacheManager.getSingleFile(any)).thenThrow(Exception());
        final cachedNetworkFileBloc =
            CachedNetworkFileBloc(mockCacheManager, "www.dummyurl.com");
        await cachedNetworkFileBloc.downloadAndStore();
        expect(cachedNetworkFileBloc.cachedFile,
            emitsError(isInstanceOf<ErrorCachedFileState>()));
      });

      test(
          "emits a state of ErrorCachedFileState if an"
          "exception is thrown loading file from cache.", () async {
        when(mockCacheManager.getFileFromCache(any)).thenThrow(Exception());
        final cachedNetworkFileBloc =
            CachedNetworkFileBloc(mockCacheManager, "www.dummyurl.com");
        await cachedNetworkFileBloc.loadFileFromCache();
        expect(cachedNetworkFileBloc.cachedFile,
            emitsError(isInstanceOf<ErrorCachedFileState>()));
      });

      test(
          "emits a state of ErrorCachedFileState if an"
          "exception is thrown deleting file from cache.", () async {
        when(mockCacheManager.removeFile(any)).thenThrow(Exception());
        final cachedNetworkFileBloc =
            CachedNetworkFileBloc(mockCacheManager, "www.dummyurl.com");
        await cachedNetworkFileBloc.deleteFileFromCache("");
        expect(cachedNetworkFileBloc.cachedFile,
            emitsError(isInstanceOf<ErrorCachedFileState>()));
      });
    });
  });
}
