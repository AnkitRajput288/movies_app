
import 'package:deepika_assignment/Model/Response/GetOtpForMobileResultResponse.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class GetOtpForMobileResultResponseConverter implements JsonConverter<GetOtpForMobileResultResponse, Map<String, dynamic>> {
  const GetOtpForMobileResultResponseConverter();

  @override
  GetOtpForMobileResultResponse fromJson(Map<String, dynamic> json) {
    return GetOtpForMobileResultResponse.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(GetOtpForMobileResultResponse data) => data.toJson();
}