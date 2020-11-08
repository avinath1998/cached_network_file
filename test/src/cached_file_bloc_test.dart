import 'package:cached_network_file/cached_network_file.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockCacheManager extends Mock implements CacheManager {}

void main() {
  test("CachedFileBloc Test", () {
    MockCacheManager manager = MockCacheManager();
    final url = "testing:url";
    CachedFileBloc cachedFileBloc = CachedFileBloc(manager, url);
  });
}
