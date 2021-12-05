// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VerificationOtpResponse _$$_VerificationOtpResponseFromJson(
        Map<String, dynamic> json) =>
    _$_VerificationOtpResponse(
      status: json['status'] as bool?,
      subCode: json['subCode'] as int?,
      message: json['message'] as String?,
      results: json['results'] == null
          ? null
          : VerificationOtpResultResponse.fromJson(
              json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VerificationOtpResponseToJson(
        _$_VerificationOtpResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'subCode': instance.subCode,
      'message': instance.message,
      'results': instance.results,
    };
