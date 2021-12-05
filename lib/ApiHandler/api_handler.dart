
import '../Model/Request/Account/verification_otp_request.dart';
import '../Model/Response/verification_otp_response.dart';
import '../Model/Response/verification_otp_result_response.dart';
import '../Network/Database/moor_database.dart';
import '../Utils/list_of_objects_utils.dart';


class ApiHandler{
  static const apiSuccessCode = 200;
  static const apiSuccessTrue = true;
  static const apiSuccessFalse = false;

  static bool isApiSuccess(bool? status, int? subCode) {
    return (subCode != null && subCode == apiSuccessCode) && (status ?? apiSuccessFalse);
  }

  static final instance = ApiHandler();

  final int _countOfElementToReturnViaApi = 5;

  List<Movie> getMovieData(){
    var _listOfAllMovieData = <Movie>[];

    for(int index = 0 ; index < _countOfElementToReturnViaApi; index++) {
      var getRandomMovieItem = ListOfObjectsUtils.getRandomObject();
      _listOfAllMovieData.add(getRandomMovieItem);
    }
    return _listOfAllMovieData;
  }


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