import 'package:freezed_annotation/freezed_annotation.dart';
part 'VerificationOtpResultResponse.g.dart';
part 'VerificationOtpResultResponse.freezed.dart';

@freezed
class VerificationOtpResultResponse with _$VerificationOtpResultResponse{
  const VerificationOtpResultResponse._();

  const factory VerificationOtpResultResponse({
    int? userLoginId,
    String? userName,
    int? memberId,
    String? emailId,
    String? token,
    String? tokenValidTill,
    String? targetPage,

  }) = _VerificationOtpResultResponse;

  factory VerificationOtpResultResponse.fromJson(Map<String, dynamic> json) => _$VerificationOtpResultResponseFromJson(json);
}