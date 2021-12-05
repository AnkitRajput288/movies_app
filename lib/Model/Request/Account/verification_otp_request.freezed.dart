// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verification_otp_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerificationOtpRequest _$VerificationOtpRequestFromJson(
    Map<String, dynamic> json) {
  return _VerificationOtpRequest.fromJson(json);
}

/// @nodoc
class _$VerificationOtpRequestTearOff {
  const _$VerificationOtpRequestTearOff();

  _VerificationOtpRequest call({String? MobileNumbar, String? Otp}) {
    return _VerificationOtpRequest(
      MobileNumbar: MobileNumbar,
      Otp: Otp,
    );
  }

  VerificationOtpRequest fromJson(Map<String, Object> json) {
    return VerificationOtpRequest.fromJson(json);
  }
}

/// @nodoc
const $VerificationOtpRequest = _$VerificationOtpRequestTearOff();

/// @nodoc
mixin _$VerificationOtpRequest {
  String? get MobileNumbar => throw _privateConstructorUsedError;
  String? get Otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationOtpRequestCopyWith<VerificationOtpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationOtpRequestCopyWith<$Res> {
  factory $VerificationOtpRequestCopyWith(VerificationOtpRequest value,
          $Res Function(VerificationOtpRequest) then) =
      _$VerificationOtpRequestCopyWithImpl<$Res>;
  $Res call({String? MobileNumbar, String? Otp});
}

/// @nodoc
class _$VerificationOtpRequestCopyWithImpl<$Res>
    implements $VerificationOtpRequestCopyWith<$Res> {
  _$VerificationOtpRequestCopyWithImpl(this._value, this._then);

  final VerificationOtpRequest _value;
  // ignore: unused_field
  final $Res Function(VerificationOtpRequest) _then;

  @override
  $Res call({
    Object? MobileNumbar = freezed,
    Object? Otp = freezed,
  }) {
    return _then(_value.copyWith(
      MobileNumbar: MobileNumbar == freezed
          ? _value.MobileNumbar
          : MobileNumbar // ignore: cast_nullable_to_non_nullable
              as String?,
      Otp: Otp == freezed
          ? _value.Otp
          : Otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$VerificationOtpRequestCopyWith<$Res>
    implements $VerificationOtpRequestCopyWith<$Res> {
  factory _$VerificationOtpRequestCopyWith(_VerificationOtpRequest value,
          $Res Function(_VerificationOtpRequest) then) =
      __$VerificationOtpRequestCopyWithImpl<$Res>;
  @override
  $Res call({String? MobileNumbar, String? Otp});
}

/// @nodoc
class __$VerificationOtpRequestCopyWithImpl<$Res>
    extends _$VerificationOtpRequestCopyWithImpl<$Res>
    implements _$VerificationOtpRequestCopyWith<$Res> {
  __$VerificationOtpRequestCopyWithImpl(_VerificationOtpRequest _value,
      $Res Function(_VerificationOtpRequest) _then)
      : super(_value, (v) => _then(v as _VerificationOtpRequest));

  @override
  _VerificationOtpRequest get _value => super._value as _VerificationOtpRequest;

  @override
  $Res call({
    Object? MobileNumbar = freezed,
    Object? Otp = freezed,
  }) {
    return _then(_VerificationOtpRequest(
      MobileNumbar: MobileNumbar == freezed
          ? _value.MobileNumbar
          : MobileNumbar // ignore: cast_nullable_to_non_nullable
              as String?,
      Otp: Otp == freezed
          ? _value.Otp
          : Otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerificationOtpRequest extends _VerificationOtpRequest {
  const _$_VerificationOtpRequest({this.MobileNumbar, this.Otp}) : super._();

  factory _$_VerificationOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$$_VerificationOtpRequestFromJson(json);

  @override
  final String? MobileNumbar;
  @override
  final String? Otp;

  @override
  String toString() {
    return 'VerificationOtpRequest(MobileNumbar: $MobileNumbar, Otp: $Otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerificationOtpRequest &&
            (identical(other.MobileNumbar, MobileNumbar) ||
                const DeepCollectionEquality()
                    .equals(other.MobileNumbar, MobileNumbar)) &&
            (identical(other.Otp, Otp) ||
                const DeepCollectionEquality().equals(other.Otp, Otp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(MobileNumbar) ^
      const DeepCollectionEquality().hash(Otp);

  @JsonKey(ignore: true)
  @override
  _$VerificationOtpRequestCopyWith<_VerificationOtpRequest> get copyWith =>
      __$VerificationOtpRequestCopyWithImpl<_VerificationOtpRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerificationOtpRequestToJson(this);
  }
}

abstract class _VerificationOtpRequest extends VerificationOtpRequest {
  const factory _VerificationOtpRequest({String? MobileNumbar, String? Otp}) =
      _$_VerificationOtpRequest;
  const _VerificationOtpRequest._() : super._();

  factory _VerificationOtpRequest.fromJson(Map<String, dynamic> json) =
      _$_VerificationOtpRequest.fromJson;

  @override
  String? get MobileNumbar => throw _privateConstructorUsedError;
  @override
  String? get Otp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VerificationOtpRequestCopyWith<_VerificationOtpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
