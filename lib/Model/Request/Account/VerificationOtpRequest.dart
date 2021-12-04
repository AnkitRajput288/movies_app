import 'package:freezed_annotation/freezed_annotation.dart';

part 'VerificationOtpRequest.g.dart';
part 'VerificationOtpRequest.freezed.dart';

@freezed
class VerificationOtpRequest with _$VerificationOtpRequest{
  const VerificationOtpRequest._();

  const factory VerificationOtpRequest({
    String? MobileNumbar,
    String? Otp,

  }) = _VerificationOtpRequest;

  factory VerificationOtpRequest.fromJson(Map<String, dynamic> json) => _$VerificationOtpRequestFromJson(json);
}