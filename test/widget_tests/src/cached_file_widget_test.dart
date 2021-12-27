import 'dart:io';

import 'package:cached_network_file/cached_network_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../unit_tests/src/cached_file_bloc_test.dart';

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

void main() {
  final mockCacheManager = MockCacheManager();
  final mockFile = MockFile();
  final mockFileInfo = MockFileInfo();

  group("CachedFileWidget Tests : ", () {
    group("Normal Tests: ", () {
      testWidgets(
          "OnFileDownloaded callback is called after downloading the file",
          (tester) async {
        when(mockCacheManager.getFileFromCache(any)).thenAnswer(
            (realInvocation) async =>
                FileInfo(mockFile, FileSource.Cache, DateTime.now(), "qwe"));
        final MockCallback mockCallback = MockCallback();
        await tester.pumpWidget(CachedNetworkFile(
            cacheManager: mockCacheManager,
            url: "123",
            errorWidget: (context, err) {
              return Text("qwe");
            },
            onFileDownloaded: (file) {
              mockCallback.call();
            },
            placeholder: Container(),
            fileNotCachedBuilder: (val, callback) {
              return Container();
            },
            fileCachedBuilder: (context, file, cache) {
              return Container();
            }));
        await tester.pumpAndSettle();
        expectLater(mockCallback.called(1), true);
      });
    });
  });
}
