// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_otp_result_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VerificationOtpResultResponse _$$_VerificationOtpResultResponseFromJson(
        Map<String, dynamic> json) =>
    _$_VerificationOtpResultResponse(
      userLoginId: json['userLoginId'] as int?,
      userName: json['userName'] as String?,
      memberId: json['memberId'] as int?,
      emailId: json['emailId'] as String?,
      token: json['token'] as String?,
      tokenValidTill: json['tokenValidTill'] as String?,
      targetPage: json['targetPage'] as String?,
    );

Map<String, dynamic> _$$_VerificationOtpResultResponseToJson(
        _$_VerificationOtpResultResponse instance) =>
    <String, dynamic>{
      'userLoginId': instance.userLoginId,
      'userName': instance.userName,
      'memberId': instance.memberId,
      'emailId': instance.emailId,
      'token': instance.token,
      'tokenValidTill': instance.tokenValidTill,
      'targetPage': instance.targetPage,
    };
