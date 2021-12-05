// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_otp_for_mobile_result_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetOtpForMobileResultResponse _$$_GetOtpForMobileResultResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetOtpForMobileResultResponse(
      mobileNumber: json['mobileNumber'] as String?,
      otp: json['otp'] as String?,
      otpExpiryDateTime: json['otpExpiryDateTime'] as int?,
    );

Map<String, dynamic> _$$_GetOtpForMobileResultResponseToJson(
        _$_GetOtpForMobileResultResponse instance) =>
    <String, dynamic>{
      'mobileNumber': instance.mobileNumber,
      'otp': instance.otp,
      'otpExpiryDateTime': instance.otpExpiryDateTime,
    };
