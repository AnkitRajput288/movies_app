import 'package:deepika_assignment/ApiHandler/api_handler.dart';
import 'package:deepika_assignment/Converter/AccountConverter/GetOtpForMobileResultResponseConverter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'GetOtpForMobileResultResponse.dart';

part 'GetOtpForMobileResponse.g.dart';
part 'GetOtpForMobileResponse.freezed.dart';

@freezed
class GetOtpForMobileResponse with _$GetOtpForMobileResponse{
  const GetOtpForMobileResponse._();

  const factory GetOtpForMobileResponse({
    bool? status,
    int? subCode,
    String? message,
    @GetOtpForMobileResultResponseConverter() GetOtpForMobileResultResponse? results,
  }) = _GetOtpForMobileResponse;

  factory GetOtpForMobileResponse.fromJson(Map<String, dynamic> json) => _$GetOtpForMobileResponseFromJson(json);

  bool isApiSuccess() => ApiHandler.isApiSuccess(status, subCode);
  bool isError() => !(isApiSuccess());
  bool isEmpty() => (results?.otp?.isEmpty ?? true);
}