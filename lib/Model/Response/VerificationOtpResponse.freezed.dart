// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verification_otp_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerificationOtpResponse _$VerificationOtpResponseFromJson(
    Map<String, dynamic> json) {
  return _VerificationOtpResponse.fromJson(json);
}

/// @nodoc
class _$VerificationOtpResponseTearOff {
  const _$VerificationOtpResponseTearOff();

  _VerificationOtpResponse call(
      {bool? status,
      int? subCode,
      String? message,
      @VerificationOtpResultResponseConverter()
          VerificationOtpResultResponse? results}) {
    return _VerificationOtpResponse(
      status: status,
      subCode: subCode,
      message: message,
      results: results,
    );
  }

  VerificationOtpResponse fromJson(Map<String, Object> json) {
    return VerificationOtpResponse.fromJson(json);
  }
}

/// @nodoc
const $VerificationOtpResponse = _$VerificationOtpResponseTearOff();

/// @nodoc
mixin _$VerificationOtpResponse {
  bool? get status => throw _privateConstructorUsedError;
  int? get subCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @VerificationOtpResultResponseConverter()
  VerificationOtpResultResponse? get results =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationOtpResponseCopyWith<VerificationOtpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationOtpResponseCopyWith<$Res> {
  factory $VerificationOtpResponseCopyWith(VerificationOtpResponse value,
          $Res Function(VerificationOtpResponse) then) =
      _$VerificationOtpResponseCopyWithImpl<$Res>;
  $Res call(
      {bool? status,
      int? subCode,
      String? message,
      @VerificationOtpResultResponseConverter()
          VerificationOtpResultResponse? results});

  $VerificationOtpResultResponseCopyWith<$Res>? get results;
}

/// @nodoc
class _$VerificationOtpResponseCopyWithImpl<$Res>
    implements $VerificationOtpResponseCopyWith<$Res> {
  _$VerificationOtpResponseCopyWithImpl(this._value, this._then);

  final VerificationOtpResponse _value;
  // ignore: unused_field
  final $Res Function(VerificationOtpResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? subCode = freezed,
    Object? message = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      subCode: subCode == freezed
          ? _value.subCode
          : subCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as VerificationOtpResultResponse?,
    ));
  }

  @override
  $VerificationOtpResultResponseCopyWith<$Res>? get results {
    if (_value.results == null) {
      return null;
    }

    return $VerificationOtpResultResponseCopyWith<$Res>(_value.results!,
        (value) {
      return _then(_value.copyWith(results: value));
    });
  }
}

/// @nodoc
abstract class _$VerificationOtpResponseCopyWith<$Res>
    implements $VerificationOtpResponseCopyWith<$Res> {
  factory _$VerificationOtpResponseCopyWith(_VerificationOtpResponse value,
          $Res Function(_VerificationOtpResponse) then) =
      __$VerificationOtpResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? status,
      int? subCode,
      String? message,
      @VerificationOtpResultResponseConverter()
          VerificationOtpResultResponse? results});

  @override
  $VerificationOtpResultResponseCopyWith<$Res>? get results;
}

/// @nodoc
class __$VerificationOtpResponseCopyWithImpl<$Res>
    extends _$VerificationOtpResponseCopyWithImpl<$Res>
    implements _$VerificationOtpResponseCopyWith<$Res> {
  __$VerificationOtpResponseCopyWithImpl(_VerificationOtpResponse _value,
      $Res Function(_VerificationOtpResponse) _then)
      : super(_value, (v) => _then(v as _VerificationOtpResponse));

  @override
  _VerificationOtpResponse get _value =>
      super._value as _VerificationOtpResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? subCode = freezed,
    Object? message = freezed,
    Object? results = freezed,
  }) {
    return _then(_VerificationOtpResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      subCode: subCode == freezed
          ? _value.subCode
          : subCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as VerificationOtpResultResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerificationOtpResponse extends _VerificationOtpResponse {
  const _$_VerificationOtpResponse(
      {this.status,
      this.subCode,
      this.message,
      @VerificationOtpResultResponseConverter() this.results})
      : super._();

  factory _$_VerificationOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$$_VerificationOtpResponseFromJson(json);

  @override
  final bool? status;
  @override
  final int? subCode;
  @override
  final String? message;
  @override
  @VerificationOtpResultResponseConverter()
  final VerificationOtpResultResponse? results;

  @override
  String toString() {
    return 'VerificationOtpResponse(status: $status, subCode: $subCode, message: $message, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerificationOtpResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.subCode, subCode) ||
                const DeepCollectionEquality()
                    .equals(other.subCode, subCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(subCode) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(results);

  @JsonKey(ignore: true)
  @override
  _$VerificationOtpResponseCopyWith<_VerificationOtpResponse> get copyWith =>
      __$VerificationOtpResponseCopyWithImpl<_VerificationOtpResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerificationOtpResponseToJson(this);
  }
}

abstract class _VerificationOtpResponse extends VerificationOtpResponse {
  const factory _VerificationOtpResponse(
      {bool? status,
      int? subCode,
      String? message,
      @VerificationOtpResultResponseConverter()
          VerificationOtpResultResponse? results}) = _$_VerificationOtpResponse;
  const _VerificationOtpResponse._() : super._();

  factory _VerificationOtpResponse.fromJson(Map<String, dynamic> json) =
      _$_VerificationOtpResponse.fromJson;

  @override
  bool? get status => throw _privateConstructorUsedError;
  @override
  int? get subCode => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @VerificationOtpResultResponseConverter()
  VerificationOtpResultResponse? get results =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VerificationOtpResponseCopyWith<_VerificationOtpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
