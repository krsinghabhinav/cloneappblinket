import 'dart:math';
import 'package:cloneappblinket/screen/home_screen.dart';
import 'package:cloneappblinket/screen/otp_screen.dart';
import 'package:cloneappblinket/screen/page/home.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var phoneNumber = ''.obs;
  var generatedOtp = ''.obs;

  void sendOtp(String phone) {
    phoneNumber.value = phone;
    generatedOtp.value = _generateOtp();
    print('OTP sent: ${generatedOtp.value}'); // simulate OTP sent
    Get.to(OtpScreen());
  }

  String _generateOtp() {
    var rng = Random();
    return (1000 + rng.nextInt(9000)).toString(); // 4-digit OTP
  }

  void verifyOtp(String inputOtp) {
    if (inputOtp == generatedOtp.value) {
      Get.snackbar('Success', 'OTP Verified Successfully');
      Get.to(HomePage());
    } else {
      Get.snackbar('Error', 'Invalid OTP');
    }
  }
}
