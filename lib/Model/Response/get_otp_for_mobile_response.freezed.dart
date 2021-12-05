// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_otp_for_mobile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetOtpForMobileResponse _$GetOtpForMobileResponseFromJson(
    Map<String, dynamic> json) {
  return _GetOtpForMobileResponse.fromJson(json);
}

/// @nodoc
class _$GetOtpForMobileResponseTearOff {
  const _$GetOtpForMobileResponseTearOff();

  _GetOtpForMobileResponse call(
      {bool? status,
      int? subCode,
      String? message,
      @GetOtpForMobileResultResponseConverter()
          GetOtpForMobileResultResponse? results}) {
    return _GetOtpForMobileResponse(
      status: status,
      subCode: subCode,
      message: message,
      results: results,
    );
  }

  GetOtpForMobileResponse fromJson(Map<String, Object> json) {
    return GetOtpForMobileResponse.fromJson(json);
  }
}

/// @nodoc
const $GetOtpForMobileResponse = _$GetOtpForMobileResponseTearOff();

/// @nodoc
mixin _$GetOtpForMobileResponse {
  bool? get status => throw _privateConstructorUsedError;
  int? get subCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @GetOtpForMobileResultResponseConverter()
  GetOtpForMobileResultResponse? get results =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOtpForMobileResponseCopyWith<GetOtpForMobileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOtpForMobileResponseCopyWith<$Res> {
  factory $GetOtpForMobileResponseCopyWith(GetOtpForMobileResponse value,
          $Res Function(GetOtpForMobileResponse) then) =
      _$GetOtpForMobileResponseCopyWithImpl<$Res>;
  $Res call(
      {bool? status,
      int? subCode,
      String? message,
      @GetOtpForMobileResultResponseConverter()
          GetOtpForMobileResultResponse? results});

  $GetOtpForMobileResultResponseCopyWith<$Res>? get results;
}

/// @nodoc
class _$GetOtpForMobileResponseCopyWithImpl<$Res>
    implements $GetOtpForMobileResponseCopyWith<$Res> {
  _$GetOtpForMobileResponseCopyWithImpl(this._value, this._then);

  final GetOtpForMobileResponse _value;
  // ignore: unused_field
  final $Res Function(GetOtpForMobileResponse) _then;

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
              as GetOtpForMobileResultResponse?,
    ));
  }

  @override
  $GetOtpForMobileResultResponseCopyWith<$Res>? get results {
    if (_value.results == null) {
      return null;
    }

    return $GetOtpForMobileResultResponseCopyWith<$Res>(_value.results!,
        (value) {
      return _then(_value.copyWith(results: value));
    });
  }
}

/// @nodoc
abstract class _$GetOtpForMobileResponseCopyWith<$Res>
    implements $GetOtpForMobileResponseCopyWith<$Res> {
  factory _$GetOtpForMobileResponseCopyWith(_GetOtpForMobileResponse value,
          $Res Function(_GetOtpForMobileResponse) then) =
      __$GetOtpForMobileResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? status,
      int? subCode,
      String? message,
      @GetOtpForMobileResultResponseConverter()
          GetOtpForMobileResultResponse? results});

  @override
  $GetOtpForMobileResultResponseCopyWith<$Res>? get results;
}

/// @nodoc
class __$GetOtpForMobileResponseCopyWithImpl<$Res>
    extends _$GetOtpForMobileResponseCopyWithImpl<$Res>
    implements _$GetOtpForMobileResponseCopyWith<$Res> {
  __$GetOtpForMobileResponseCopyWithImpl(_GetOtpForMobileResponse _value,
      $Res Function(_GetOtpForMobileResponse) _then)
      : super(_value, (v) => _then(v as _GetOtpForMobileResponse));

  @override
  _GetOtpForMobileResponse get _value =>
      super._value as _GetOtpForMobileResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? subCode = freezed,
    Object? message = freezed,
    Object? results = freezed,
  }) {
    return _then(_GetOtpForMobileResponse(
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
              as GetOtpForMobileResultResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetOtpForMobileResponse extends _GetOtpForMobileResponse {
  const _$_GetOtpForMobileResponse(
      {this.status,
      this.subCode,
      this.message,
      @GetOtpForMobileResultResponseConverter() this.results})
      : super._();

  factory _$_GetOtpForMobileResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetOtpForMobileResponseFromJson(json);

  @override
  final bool? status;
  @override
  final int? subCode;
  @override
  final String? message;
  @override
  @GetOtpForMobileResultResponseConverter()
  final GetOtpForMobileResultResponse? results;

  @override
  String toString() {
    return 'GetOtpForMobileResponse(status: $status, subCode: $subCode, message: $message, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOtpForMobileResponse &&
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
  _$GetOtpForMobileResponseCopyWith<_GetOtpForMobileResponse> get copyWith =>
      __$GetOtpForMobileResponseCopyWithImpl<_GetOtpForMobileResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetOtpForMobileResponseToJson(this);
  }
}

abstract class _GetOtpForMobileResponse extends GetOtpForMobileResponse {
  const factory _GetOtpForMobileResponse(
      {bool? status,
      int? subCode,
      String? message,
      @GetOtpForMobileResultResponseConverter()
          GetOtpForMobileResultResponse? results}) = _$_GetOtpForMobileResponse;
  const _GetOtpForMobileResponse._() : super._();

  factory _GetOtpForMobileResponse.fromJson(Map<String, dynamic> json) =
      _$_GetOtpForMobileResponse.fromJson;

  @override
  bool? get status => throw _privateConstructorUsedError;
  @override
  int? get subCode => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @GetOtpForMobileResultResponseConverter()
  GetOtpForMobileResultResponse? get results =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetOtpForMobileResponseCopyWith<_GetOtpForMobileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
