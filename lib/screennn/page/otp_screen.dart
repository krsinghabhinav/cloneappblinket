import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/auth_controller.dart';

class OtpScreen extends StatelessWidget {
  final List<TextEditingController> otpControllers =
      List.generate(4, (_) => TextEditingController());

  final AuthController authController = Get.find();

  String getOtp() {
    return otpControllers.map((controller) => controller.text).join();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Enter OTP')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text('OTP sent to ${authController.phoneNumber.value}'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                4,
                (index) => SizedBox(
                  width: 50,
                  child: TextField(
                    controller: otpControllers[index],
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(counterText: ''),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                authController.verifyOtp(getOtp());
              },
              child: Text('Verify OTP'),
            ),
          ],
        ),
      ),
    );
  }
}
