import 'dart:io';

import 'package:equatable/equatable.dart';

abstract class CachedFileState with EquatableMixin {
  const CachedFileState();
}

class LoadedCachedFileState extends CachedFileState {
  const LoadedCachedFileState({this.file});
  final File? file;

  @override
  List<Object> get props {
    if (file != null) {
      return [file!];
    } else {
      return [];
    }
  }
}

class ErrorCachedFileState extends CachedFileState {
  const ErrorCachedFileState(this.e);
  final Exception e;

  @override
  List<Object> get props => [e];
}

class LoadingCachedFileState extends CachedFileState {
  const LoadingCachedFileState();

  @override
  List<Object> get props => [];
}
