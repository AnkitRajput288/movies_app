import 'package:freezed_annotation/freezed_annotation.dart';
part 'GetOtpForMobileResultResponse.g.dart';
part 'GetOtpForMobileResultResponse.freezed.dart';

@freezed
class GetOtpForMobileResultResponse with _$GetOtpForMobileResultResponse{
  const GetOtpForMobileResultResponse._();

  const factory GetOtpForMobileResultResponse({
    String? mobileNumber,
    String? otp,
    int? otpExpiryDateTime,

  }) = _GetOtpForMobileResultResponse;

  factory GetOtpForMobileResultResponse.fromJson(Map<String, dynamic> json) => _$GetOtpForMobileResultResponseFromJson(json);

 // bool isEmpty() => (otp?.isEmpty ?? true);
}