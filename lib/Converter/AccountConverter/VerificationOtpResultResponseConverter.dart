import 'package:deepika_assignment/Model/Response/VerificationOtpResultResponse.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class VerificationOtpResultResponseConverter implements JsonConverter<VerificationOtpResultResponse, Map<String, dynamic>> {
  const VerificationOtpResultResponseConverter();

  @override
  VerificationOtpResultResponse fromJson(Map<String, dynamic> json) {
    return VerificationOtpResultResponse.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(VerificationOtpResultResponse data) => data.toJson();
}