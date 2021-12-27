import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import '../cached_network_file.dart';
import 'cached_network_file_state.dart';

class CachedNetworkFile extends StatefulWidget {
  const CachedNetworkFile(
      {Key key,
      @required this.url,
      this.cacheManager,
      @required this.errorWidget,
      @required this.placeholder,
      @required this.fileNotCachedBuilder,
      @required this.fileCachedBuilder,
      this.onFileDownloaded})
      : super(key: key);

  final String url;
  final CacheManager cacheManager;
  final Widget Function(BuildContext, Exception) errorWidget;
  final Widget placeholder;
  final Widget Function(BuildContext, Function() loadFileCallback)
      fileNotCachedBuilder;
  final Widget Function(
          BuildContext, File, Function(String) deleteFromCacheCallback)
      fileCachedBuilder;
  final ValueChanged<File> onFileDownloaded;

  @override
  _CachedNetworkFileState createState() => _CachedNetworkFileState();
}

class _CachedNetworkFileState extends State<CachedNetworkFile> {
  CachedNetworkFileBloc _cachedFileBloc;

  @override
  void initState() {
    super.initState();

    _cachedFileBloc = CachedNetworkFileBloc(
        widget.cacheManager ?? DefaultCacheManager(), widget.url)
      ..loadFileFromCache();
    _cachedFileBloc.addFileDownloadedListener((value) {
      if (widget.onFileDownloaded != null) {
        widget.onFileDownloaded(value);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _cachedFileBloc.cachedFile.close();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<CachedFileState>(
        stream: _cachedFileBloc.cachedFile,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return widget.errorWidget(context, Exception());
          } else if (snapshot.hasData) {
            if (snapshot.data is LoadedCachedFileState) {
              if ((snapshot.data as LoadedCachedFileState).file != null) {
                return widget.fileCachedBuilder(
                    context,
                    (snapshot.data as LoadedCachedFileState).file,
                    _cachedFileBloc.deleteFileFromCache);
              } else {
                return widget.fileNotCachedBuilder(
                    context, _cachedFileBloc.downloadAndStore);
              }
            } else if (snapshot.data is LoadingCachedFileState) {
              return widget.placeholder;
            }
          }
          return widget.placeholder;
        });
  }
}
