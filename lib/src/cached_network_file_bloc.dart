import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:rxdart/subjects.dart';

import 'cached_file_state.dart';

class CachedFileBloc {
  CachedFileBloc(this.manager, this.url) {
    loadFileFromCache();
  }

  final CacheManager manager;
  final String url;
  final BehaviorSubject<CachedFileState> cachedFile =
      BehaviorSubject<CachedFileState>();

  Future<void> downloadAndStore() async {
    cachedFile.add(const LoadingCachedFileState());
    try {
      final file = await manager.getSingleFile(url);
      cachedFile.add(LoadedCachedFileState(file));
    } on Exception catch (e) {
      cachedFile.addError(ErrorCachedFileState(e));
    }
  }

  Future<void> loadFileFromCache() async {
    cachedFile.add(const LoadingCachedFileState());
    try {
      final fileInfo = await manager.getFileFromCache(url);
      cachedFile.add(LoadedCachedFileState(fileInfo?.file));
    } on Exception catch (e) {
      cachedFile.addError(ErrorCachedFileState(e));
    }
  }

  Future<void> clearCache() async {
    cachedFile.add(const LoadingCachedFileState());
    try {
      await manager.emptyCache();
      cachedFile.add(const LoadedCachedFileState(null));
    } on Exception catch (e) {
      cachedFile.addError(ErrorCachedFileState(e));
    }
  }
}
