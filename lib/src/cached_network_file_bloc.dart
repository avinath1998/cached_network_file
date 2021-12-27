import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:rxdart/subjects.dart';

import 'cached_network_file_state.dart';

class CachedNetworkFileBloc {
  CachedNetworkFileBloc(this.manager, this.url);

  final CacheManager manager;
  final String url;
  final BehaviorSubject<CachedFileState> cachedFile =
      BehaviorSubject<CachedFileState>();
  final List<ValueChanged<File>> _listeners = [];

  void addFileDownloadedListener(ValueChanged<File> callback) {
    _listeners.add(callback);
  }

  void clearListeners() {
    _listeners.clear();
  }

  Future<void> downloadAndStore() async {
    cachedFile.add(const LoadingCachedFileState());
    try {
      final file = await manager.getSingleFile(url);
      cachedFile.add(LoadedCachedFileState(file));
      for (final listener in _listeners) {
        listener(file);
      }
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

  Future<void> deleteFileFromCache(String url) async {
    cachedFile.add(const LoadingCachedFileState());
    try {
      await manager.removeFile(url);
      cachedFile.add(const LoadedCachedFileState(null));
    } on Exception catch (e) {
      cachedFile.addError(ErrorCachedFileState(e));
    }
  }
}
