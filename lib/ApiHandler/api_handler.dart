
import 'package:deepika_assignment/Model/Movies.dart';
import 'package:deepika_assignment/Model/Request/Account/VerificationOtpRequest.dart';
import 'package:deepika_assignment/Model/Response/VerificationOtpResponse.dart';
import 'package:deepika_assignment/Model/Response/VerificationOtpResultResponse.dart';
import 'package:deepika_assignment/Utils/list_of_objects_utils.dart';


class ApiHandler{
  static const API_SUCCESS_CODE = 200;
  static const API_SUCCESS_TRUE = true;
  static const API_SUCCESS_FALSE = false;

  static bool isApiSuccess(bool? status, int? subCode) {
    return (subCode != null && subCode == API_SUCCESS_CODE) && (status ?? API_SUCCESS_FALSE);
  }

  static final instance = ApiHandler();
  /*
  final int _countOfElementToReturnViaApi = 5;

  List<Movies> getMovieData(){
    var _listOfAllMovieData = <Movies>[];
    for(int index = 0 ; index < _countOfElementToReturnViaApi; index++) {
      var getRandomMovieItem = ListOfObjectsUtils.getRandomObject();
      _listOfAllMovieData.add(getRandomMovieItem);
    }
    return _listOfAllMovieData;
  }*/

  static VerificationOtpResponse? getVerificationOtp(VerificationOtpRequest verificationOtpRequest) {
    if(verificationOtpRequest.Otp == "7777") {
      return VerificationOtpResponse(status: true, subCode: 200, message: 'Success',
          results: VerificationOtpResultResponse(userName: verificationOtpRequest.MobileNumbar,
            emailId: 'Ankit@gmail.com', memberId: 1,
            userLoginId: 1, token: 'eyskl84-dgbsgh49chf-6jsfnf',));
    }

    return const VerificationOtpResponse(status: false, subCode: 999, message: 'OTP not correct', results: null);
  }

}