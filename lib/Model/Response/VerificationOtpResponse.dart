import 'package:deepika_assignment/ApiHandler/api_handler.dart';
import 'package:deepika_assignment/Converter/AccountConverter/VerificationOtpResultResponseConverter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'VerificationOtpResultResponse.dart';
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