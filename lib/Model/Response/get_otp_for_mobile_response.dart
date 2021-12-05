import '../../ApiHandler/api_handler.dart';
import '../../Converter/AccountConverter/get_otp_for_mobile_result_response_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'get_otp_for_mobile_result_response.dart';

part 'GetOtpForMobileResponse.g.dart';
part 'get_otp_for_mobile_response.freezed.dart';

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