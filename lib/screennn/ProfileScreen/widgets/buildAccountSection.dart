import 'package:cloneappblinket/screennn/page/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Buildaccountsection extends StatelessWidget {
  const Buildaccountsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Your account',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Log in or sign up to view your complete profile',
          style: TextStyle(fontSize: 16, color: Colors.black54),
        ),
        const SizedBox(height: 16),
        OutlinedButton(
          onPressed: () {
            // Navigator.push(
            Get.to(LoginScreen());
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.green,
            side: const BorderSide(color: Colors.green, width: 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            minimumSize: const Size(double.infinity, 50),
          ),
          child: const Text(
            'Continue',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}