import '../../ApiHandler/api_handler.dart';
import '../../Converter/AccountConverter/verification_otp_result_response_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'verification_otp_result_response.dart';
part 'VerificationOtpResponse.g.dart';
part 'VerificationOtpResponse.freezed.dart';

@freezed
class VerificationOtpResponse with _$VerificationOtpResponse{
  const VerificationOtpResponse._();

  const factory VerificationOtpResponse({
    bool? status,
    int? subCode,
    String? message,
    @VerificationOtpResultResponseConverter() VerificationOtpResultResponse? results,
  }) = _VerificationOtpResponse;

  factory VerificationOtpResponse.fromJson(Map<String, dynamic> json) => _$VerificationOtpResponseFromJson(json);

  bool isApiSuccess() => ApiHandler.isApiSuccess(status, subCode);
  bool isError() => !(isApiSuccess());
  bool isEmpty() => (results?.token?.isEmpty ?? true);
}