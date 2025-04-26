// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AppParamsState {
  String get inputValueStr => throw _privateConstructorUsedError;
  List<OverlayEntry>? get firstEntries => throw _privateConstructorUsedError;
  List<OverlayEntry>? get secondEntries => throw _privateConstructorUsedError;
  Offset? get overlayPosition => throw _privateConstructorUsedError;

  /// Create a copy of AppParamsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppParamsStateCopyWith<AppParamsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppParamsStateCopyWith<$Res> {
  factory $AppParamsStateCopyWith(
    AppParamsState value,
    $Res Function(AppParamsState) then,
  ) = _$AppParamsStateCopyWithImpl<$Res, AppParamsState>;
  @useResult
  $Res call({
    String inputValueStr,
    List<OverlayEntry>? firstEntries,
    List<OverlayEntry>? secondEntries,
    Offset? overlayPosition,
  });
}

/// @nodoc
class _$AppParamsStateCopyWithImpl<$Res, $Val extends AppParamsState>
    implements $AppParamsStateCopyWith<$Res> {
  _$AppParamsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppParamsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputValueStr = null,
    Object? firstEntries = freezed,
    Object? secondEntries = freezed,
    Object? overlayPosition = freezed,
  }) {
    return _then(
      _value.copyWith(
            inputValueStr:
                null == inputValueStr
                    ? _value.inputValueStr
                    : inputValueStr // ignore: cast_nullable_to_non_nullable
                        as String,
            firstEntries:
                freezed == firstEntries
                    ? _value.firstEntries
                    : firstEntries // ignore: cast_nullable_to_non_nullable
                        as List<OverlayEntry>?,
            secondEntries:
                freezed == secondEntries
                    ? _value.secondEntries
                    : secondEntries // ignore: cast_nullable_to_non_nullable
                        as List<OverlayEntry>?,
            overlayPosition:
                freezed == overlayPosition
                    ? _value.overlayPosition
                    : overlayPosition // ignore: cast_nullable_to_non_nullable
                        as Offset?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppParamsStateImplCopyWith<$Res>
    implements $AppParamsStateCopyWith<$Res> {
  factory _$$AppParamsStateImplCopyWith(
    _$AppParamsStateImpl value,
    $Res Function(_$AppParamsStateImpl) then,
  ) = __$$AppParamsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String inputValueStr,
    List<OverlayEntry>? firstEntries,
    List<OverlayEntry>? secondEntries,
    Offset? overlayPosition,
  });
}

/// @nodoc
class __$$AppParamsStateImplCopyWithImpl<$Res>
    extends _$AppParamsStateCopyWithImpl<$Res, _$AppParamsStateImpl>
    implements _$$AppParamsStateImplCopyWith<$Res> {
  __$$AppParamsStateImplCopyWithImpl(
    _$AppParamsStateImpl _value,
    $Res Function(_$AppParamsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppParamsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputValueStr = null,
    Object? firstEntries = freezed,
    Object? secondEntries = freezed,
    Object? overlayPosition = freezed,
  }) {
    return _then(
      _$AppParamsStateImpl(
        inputValueStr:
            null == inputValueStr
                ? _value.inputValueStr
                : inputValueStr // ignore: cast_nullable_to_non_nullable
                    as String,
        firstEntries:
            freezed == firstEntries
                ? _value._firstEntries
                : firstEntries // ignore: cast_nullable_to_non_nullable
                    as List<OverlayEntry>?,
        secondEntries:
            freezed == secondEntries
                ? _value._secondEntries
                : secondEntries // ignore: cast_nullable_to_non_nullable
                    as List<OverlayEntry>?,
        overlayPosition:
            freezed == overlayPosition
                ? _value.overlayPosition
                : overlayPosition // ignore: cast_nullable_to_non_nullable
                    as Offset?,
      ),
    );
  }
}

/// @nodoc

class _$AppParamsStateImpl implements _AppParamsState {
  const _$AppParamsStateImpl({
    this.inputValueStr = '0',
    final List<OverlayEntry>? firstEntries,
    final List<OverlayEntry>? secondEntries,
    this.overlayPosition,
  }) : _firstEntries = firstEntries,
       _secondEntries = secondEntries;

  @override
  @JsonKey()
  final String inputValueStr;
  final List<OverlayEntry>? _firstEntries;
  @override
  List<OverlayEntry>? get firstEntries {
    final value = _firstEntries;
    if (value == null) return null;
    if (_firstEntries is EqualUnmodifiableListView) return _firstEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OverlayEntry>? _secondEntries;
  @override
  List<OverlayEntry>? get secondEntries {
    final value = _secondEntries;
    if (value == null) return null;
    if (_secondEntries is EqualUnmodifiableListView) return _secondEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Offset? overlayPosition;

  @override
  String toString() {
    return 'AppParamsState(inputValueStr: $inputValueStr, firstEntries: $firstEntries, secondEntries: $secondEntries, overlayPosition: $overlayPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppParamsStateImpl &&
            (identical(other.inputValueStr, inputValueStr) ||
                other.inputValueStr == inputValueStr) &&
            const DeepCollectionEquality().equals(
              other._firstEntries,
              _firstEntries,
            ) &&
            const DeepCollectionEquality().equals(
              other._secondEntries,
              _secondEntries,
            ) &&
            (identical(other.overlayPosition, overlayPosition) ||
                other.overlayPosition == overlayPosition));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    inputValueStr,
    const DeepCollectionEquality().hash(_firstEntries),
    const DeepCollectionEquality().hash(_secondEntries),
    overlayPosition,
  );

  /// Create a copy of AppParamsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppParamsStateImplCopyWith<_$AppParamsStateImpl> get copyWith =>
      __$$AppParamsStateImplCopyWithImpl<_$AppParamsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _AppParamsState implements AppParamsState {
  const factory _AppParamsState({
    final String inputValueStr,
    final List<OverlayEntry>? firstEntries,
    final List<OverlayEntry>? secondEntries,
    final Offset? overlayPosition,
  }) = _$AppParamsStateImpl;

  @override
  String get inputValueStr;
  @override
  List<OverlayEntry>? get firstEntries;
  @override
  List<OverlayEntry>? get secondEntries;
  @override
  Offset? get overlayPosition;

  /// Create a copy of AppParamsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppParamsStateImplCopyWith<_$AppParamsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
