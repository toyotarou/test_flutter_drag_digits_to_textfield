import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_params.freezed.dart';

part 'app_params.g.dart';

@freezed
class AppParamsState with _$AppParamsState {
  const factory AppParamsState({
    @Default('0') String inputValueStr,

    List<OverlayEntry>? firstEntries,
    List<OverlayEntry>? secondEntries,

    Offset? overlayPosition,
  }) = _AppParamsState;
}

@Riverpod(keepAlive: true)
class AppParams extends _$AppParams {
  ///
  @override
  AppParamsState build() => const AppParamsState();

  ///
  void setInputValueStr({required String str}) => state = state.copyWith(inputValueStr: str);

  ///
  void setFirstOverlayParams({required List<OverlayEntry>? firstEntries}) =>
      state = state.copyWith(firstEntries: firstEntries);

  ///
  void setSecondOverlayParams({required List<OverlayEntry>? secondEntries}) =>
      state = state.copyWith(secondEntries: secondEntries);

  ///
  void updateOverlayPosition(Offset newPos) => state = state.copyWith(overlayPosition: newPos);
}
