import 'package:cached_network_file/cached_network_file.dart';
import 'package:cached_network_file/src/cached_network_file_state.dart';
import 'package:file/file.dart';
import 'package:file/src/backends/local/local_file.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockCacheManager extends Mock implements CacheManager {}

void main() {
  group("CachedFileBloc Tests", () {
    final mockCacheManager = MockCacheManager();
    group("Normal Behaviour", () {});
  });
}
