// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_otp_for_mobile_result_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetOtpForMobileResultResponse _$GetOtpForMobileResultResponseFromJson(
    Map<String, dynamic> json) {
  return _GetOtpForMobileResultResponse.fromJson(json);
}

/// @nodoc
class _$GetOtpForMobileResultResponseTearOff {
  const _$GetOtpForMobileResultResponseTearOff();

  _GetOtpForMobileResultResponse call(
      {String? mobileNumber, String? otp, int? otpExpiryDateTime}) {
    return _GetOtpForMobileResultResponse(
      mobileNumber: mobileNumber,
      otp: otp,
      otpExpiryDateTime: otpExpiryDateTime,
    );
  }

  GetOtpForMobileResultResponse fromJson(Map<String, Object> json) {
    return GetOtpForMobileResultResponse.fromJson(json);
  }
}

/// @nodoc
const $GetOtpForMobileResultResponse = _$GetOtpForMobileResultResponseTearOff();

/// @nodoc
mixin _$GetOtpForMobileResultResponse {
  String? get mobileNumber => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;
  int? get otpExpiryDateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOtpForMobileResultResponseCopyWith<GetOtpForMobileResultResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOtpForMobileResultResponseCopyWith<$Res> {
  factory $GetOtpForMobileResultResponseCopyWith(
          GetOtpForMobileResultResponse value,
          $Res Function(GetOtpForMobileResultResponse) then) =
      _$GetOtpForMobileResultResponseCopyWithImpl<$Res>;
  $Res call({String? mobileNumber, String? otp, int? otpExpiryDateTime});
}

/// @nodoc
class _$GetOtpForMobileResultResponseCopyWithImpl<$Res>
    implements $GetOtpForMobileResultResponseCopyWith<$Res> {
  _$GetOtpForMobileResultResponseCopyWithImpl(this._value, this._then);

  final GetOtpForMobileResultResponse _value;
  // ignore: unused_field
  final $Res Function(GetOtpForMobileResultResponse) _then;

  @override
  $Res call({
    Object? mobileNumber = freezed,
    Object? otp = freezed,
    Object? otpExpiryDateTime = freezed,
  }) {
    return _then(_value.copyWith(
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      otpExpiryDateTime: otpExpiryDateTime == freezed
          ? _value.otpExpiryDateTime
          : otpExpiryDateTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$GetOtpForMobileResultResponseCopyWith<$Res>
    implements $GetOtpForMobileResultResponseCopyWith<$Res> {
  factory _$GetOtpForMobileResultResponseCopyWith(
          _GetOtpForMobileResultResponse value,
          $Res Function(_GetOtpForMobileResultResponse) then) =
      __$GetOtpForMobileResultResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? mobileNumber, String? otp, int? otpExpiryDateTime});
}

/// @nodoc
class __$GetOtpForMobileResultResponseCopyWithImpl<$Res>
    extends _$GetOtpForMobileResultResponseCopyWithImpl<$Res>
    implements _$GetOtpForMobileResultResponseCopyWith<$Res> {
  __$GetOtpForMobileResultResponseCopyWithImpl(
      _GetOtpForMobileResultResponse _value,
      $Res Function(_GetOtpForMobileResultResponse) _then)
      : super(_value, (v) => _then(v as _GetOtpForMobileResultResponse));

  @override
  _GetOtpForMobileResultResponse get _value =>
      super._value as _GetOtpForMobileResultResponse;

  @override
  $Res call({
    Object? mobileNumber = freezed,
    Object? otp = freezed,
    Object? otpExpiryDateTime = freezed,
  }) {
    return _then(_GetOtpForMobileResultResponse(
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      otpExpiryDateTime: otpExpiryDateTime == freezed
          ? _value.otpExpiryDateTime
          : otpExpiryDateTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetOtpForMobileResultResponse extends _GetOtpForMobileResultResponse {
  const _$_GetOtpForMobileResultResponse(
      {this.mobileNumber, this.otp, this.otpExpiryDateTime})
      : super._();

  factory _$_GetOtpForMobileResultResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetOtpForMobileResultResponseFromJson(json);

  @override
  final String? mobileNumber;
  @override
  final String? otp;
  @override
  final int? otpExpiryDateTime;

  @override
  String toString() {
    return 'GetOtpForMobileResultResponse(mobileNumber: $mobileNumber, otp: $otp, otpExpiryDateTime: $otpExpiryDateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOtpForMobileResultResponse &&
            (identical(other.mobileNumber, mobileNumber) ||
                const DeepCollectionEquality()
                    .equals(other.mobileNumber, mobileNumber)) &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)) &&
            (identical(other.otpExpiryDateTime, otpExpiryDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.otpExpiryDateTime, otpExpiryDateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mobileNumber) ^
      const DeepCollectionEquality().hash(otp) ^
      const DeepCollectionEquality().hash(otpExpiryDateTime);

  @JsonKey(ignore: true)
  @override
  _$GetOtpForMobileResultResponseCopyWith<_GetOtpForMobileResultResponse>
      get copyWith => __$GetOtpForMobileResultResponseCopyWithImpl<
          _GetOtpForMobileResultResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetOtpForMobileResultResponseToJson(this);
  }
}

abstract class _GetOtpForMobileResultResponse
    extends GetOtpForMobileResultResponse {
  const factory _GetOtpForMobileResultResponse(
      {String? mobileNumber,
      String? otp,
      int? otpExpiryDateTime}) = _$_GetOtpForMobileResultResponse;
  const _GetOtpForMobileResultResponse._() : super._();

  factory _GetOtpForMobileResultResponse.fromJson(Map<String, dynamic> json) =
      _$_GetOtpForMobileResultResponse.fromJson;

  @override
  String? get mobileNumber => throw _privateConstructorUsedError;
  @override
  String? get otp => throw _privateConstructorUsedError;
  @override
  int? get otpExpiryDateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetOtpForMobileResultResponseCopyWith<_GetOtpForMobileResultResponse>
      get copyWith => throw _privateConstructorUsedError;
}
