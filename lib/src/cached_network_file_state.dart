import 'dart:io';

abstract class CachedFileState {
  const CachedFileState();
}

class LoadedCachedFileState extends CachedFileState {
  const LoadedCachedFileState(this.file);
  final File file;
}

class ErrorCachedFileState extends CachedFileState {
  const ErrorCachedFileState(this.e);
  final Exception e;
}

class LoadingCachedFileState extends CachedFileState {
  const LoadingCachedFileState();
}
