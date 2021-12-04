// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_theme_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppThemeMeta _$AppThemeMetaFromJson(Map<String, dynamic> json) {
  return _AppThemeMeta.fromJson(json);
}

/// @nodoc
class _$AppThemeMetaTearOff {
  const _$AppThemeMetaTearOff();

  _AppThemeMeta call(
      EnumAppThemeParentBackground enumParentBackground,
      EnumAppThemeChildColor enumChildColor,
      EnumAppThemeFonts enumFont,
      EnumAppThemeFontsSize enumFontSize) {
    return _AppThemeMeta(
      enumParentBackground,
      enumChildColor,
      enumFont,
      enumFontSize,
    );
  }

  AppThemeMeta fromJson(Map<String, Object> json) {
    return AppThemeMeta.fromJson(json);
  }
}

/// @nodoc
const $AppThemeMeta = _$AppThemeMetaTearOff();

/// @nodoc
mixin _$AppThemeMeta {
  EnumAppThemeParentBackground get enumParentBackground =>
      throw _privateConstructorUsedError;
  EnumAppThemeChildColor get enumChildColor =>
      throw _privateConstructorUsedError;
  EnumAppThemeFonts get enumFont => throw _privateConstructorUsedError;
  EnumAppThemeFontsSize get enumFontSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppThemeMetaCopyWith<AppThemeMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeMetaCopyWith<$Res> {
  factory $AppThemeMetaCopyWith(
          AppThemeMeta value, $Res Function(AppThemeMeta) then) =
      _$AppThemeMetaCopyWithImpl<$Res>;
  $Res call(
      {EnumAppThemeParentBackground enumParentBackground,
      EnumAppThemeChildColor enumChildColor,
      EnumAppThemeFonts enumFont,
      EnumAppThemeFontsSize enumFontSize});
}

/// @nodoc
class _$AppThemeMetaCopyWithImpl<$Res> implements $AppThemeMetaCopyWith<$Res> {
  _$AppThemeMetaCopyWithImpl(this._value, this._then);

  final AppThemeMeta _value;
  // ignore: unused_field
  final $Res Function(AppThemeMeta) _then;

  @override
  $Res call({
    Object? enumParentBackground = freezed,
    Object? enumChildColor = freezed,
    Object? enumFont = freezed,
    Object? enumFontSize = freezed,
  }) {
    return _then(_value.copyWith(
      enumParentBackground: enumParentBackground == freezed
          ? _value.enumParentBackground
          : enumParentBackground // ignore: cast_nullable_to_non_nullable
              as EnumAppThemeParentBackground,
      enumChildColor: enumChildColor == freezed
          ? _value.enumChildColor
          : enumChildColor // ignore: cast_nullable_to_non_nullable
              as EnumAppThemeChildColor,
      enumFont: enumFont == freezed
          ? _value.enumFont
          : enumFont // ignore: cast_nullable_to_non_nullable
              as EnumAppThemeFonts,
      enumFontSize: enumFontSize == freezed
          ? _value.enumFontSize
          : enumFontSize // ignore: cast_nullable_to_non_nullable
              as EnumAppThemeFontsSize,
    ));
  }
}

/// @nodoc
abstract class _$AppThemeMetaCopyWith<$Res>
    implements $AppThemeMetaCopyWith<$Res> {
  factory _$AppThemeMetaCopyWith(
          _AppThemeMeta value, $Res Function(_AppThemeMeta) then) =
      __$AppThemeMetaCopyWithImpl<$Res>;
  @override
  $Res call(
      {EnumAppThemeParentBackground enumParentBackground,
      EnumAppThemeChildColor enumChildColor,
      EnumAppThemeFonts enumFont,
      EnumAppThemeFontsSize enumFontSize});
}

/// @nodoc
class __$AppThemeMetaCopyWithImpl<$Res> extends _$AppThemeMetaCopyWithImpl<$Res>
    implements _$AppThemeMetaCopyWith<$Res> {
  __$AppThemeMetaCopyWithImpl(
      _AppThemeMeta _value, $Res Function(_AppThemeMeta) _then)
      : super(_value, (v) => _then(v as _AppThemeMeta));

  @override
  _AppThemeMeta get _value => super._value as _AppThemeMeta;

  @override
  $Res call({
    Object? enumParentBackground = freezed,
    Object? enumChildColor = freezed,
    Object? enumFont = freezed,
    Object? enumFontSize = freezed,
  }) {
    return _then(_AppThemeMeta(
      enumParentBackground == freezed
          ? _value.enumParentBackground
          : enumParentBackground // ignore: cast_nullable_to_non_nullable
              as EnumAppThemeParentBackground,
      enumChildColor == freezed
          ? _value.enumChildColor
          : enumChildColor // ignore: cast_nullable_to_non_nullable
              as EnumAppThemeChildColor,
      enumFont == freezed
          ? _value.enumFont
          : enumFont // ignore: cast_nullable_to_non_nullable
              as EnumAppThemeFonts,
      enumFontSize == freezed
          ? _value.enumFontSize
          : enumFontSize // ignore: cast_nullable_to_non_nullable
              as EnumAppThemeFontsSize,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppThemeMeta extends _AppThemeMeta with DiagnosticableTreeMixin {
  const _$_AppThemeMeta(this.enumParentBackground, this.enumChildColor,
      this.enumFont, this.enumFontSize)
      : super._();

  factory _$_AppThemeMeta.fromJson(Map<String, dynamic> json) =>
      _$$_AppThemeMetaFromJson(json);

  @override
  final EnumAppThemeParentBackground enumParentBackground;
  @override
  final EnumAppThemeChildColor enumChildColor;
  @override
  final EnumAppThemeFonts enumFont;
  @override
  final EnumAppThemeFontsSize enumFontSize;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppThemeMeta(enumParentBackground: $enumParentBackground, enumChildColor: $enumChildColor, enumFont: $enumFont, enumFontSize: $enumFontSize)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppThemeMeta'))
      ..add(DiagnosticsProperty('enumParentBackground', enumParentBackground))
      ..add(DiagnosticsProperty('enumChildColor', enumChildColor))
      ..add(DiagnosticsProperty('enumFont', enumFont))
      ..add(DiagnosticsProperty('enumFontSize', enumFontSize));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppThemeMeta &&
            (identical(other.enumParentBackground, enumParentBackground) ||
                const DeepCollectionEquality().equals(
                    other.enumParentBackground, enumParentBackground)) &&
            (identical(other.enumChildColor, enumChildColor) ||
                const DeepCollectionEquality()
                    .equals(other.enumChildColor, enumChildColor)) &&
            (identical(other.enumFont, enumFont) ||
                const DeepCollectionEquality()
                    .equals(other.enumFont, enumFont)) &&
            (identical(other.enumFontSize, enumFontSize) ||
                const DeepCollectionEquality()
                    .equals(other.enumFontSize, enumFontSize)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(enumParentBackground) ^
      const DeepCollectionEquality().hash(enumChildColor) ^
      const DeepCollectionEquality().hash(enumFont) ^
      const DeepCollectionEquality().hash(enumFontSize);

  @JsonKey(ignore: true)
  @override
  _$AppThemeMetaCopyWith<_AppThemeMeta> get copyWith =>
      __$AppThemeMetaCopyWithImpl<_AppThemeMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppThemeMetaToJson(this);
  }
}

abstract class _AppThemeMeta extends AppThemeMeta {
  const factory _AppThemeMeta(
      EnumAppThemeParentBackground enumParentBackground,
      EnumAppThemeChildColor enumChildColor,
      EnumAppThemeFonts enumFont,
      EnumAppThemeFontsSize enumFontSize) = _$_AppThemeMeta;
  const _AppThemeMeta._() : super._();

  factory _AppThemeMeta.fromJson(Map<String, dynamic> json) =
      _$_AppThemeMeta.fromJson;

  @override
  EnumAppThemeParentBackground get enumParentBackground =>
      throw _privateConstructorUsedError;
  @override
  EnumAppThemeChildColor get enumChildColor =>
      throw _privateConstructorUsedError;
  @override
  EnumAppThemeFonts get enumFont => throw _privateConstructorUsedError;
  @override
  EnumAppThemeFontsSize get enumFontSize => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppThemeMetaCopyWith<_AppThemeMeta> get copyWith =>
      throw _privateConstructorUsedError;
}
