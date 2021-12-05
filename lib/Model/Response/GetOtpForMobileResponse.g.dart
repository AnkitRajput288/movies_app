// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_otp_for_mobile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetOtpForMobileResponse _$$_GetOtpForMobileResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetOtpForMobileResponse(
      status: json['status'] as bool?,
      subCode: json['subCode'] as int?,
      message: json['message'] as String?,
      results: json['results'] == null
          ? null
          : GetOtpForMobileResultResponse.fromJson(
              json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetOtpForMobileResponseToJson(
        _$_GetOtpForMobileResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'subCode': instance.subCode,
      'message': instance.message,
      'results': instance.results,
    };
