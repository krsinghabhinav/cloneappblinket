import 'package:cloneappblinket/screennn/page/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color.fromARGB(255, 138, 247, 151),
      body: SingleChildScrollView(
        // controller: _scrollController,
        child: SizedBox(
          height: Get.height,
          child: Stack(
            children: [
              /// Background Image
              Column(
                children: [
                  SizedBox(
                    width: Get.width,
                    child: Image.asset(
                      "assets/images/bl.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),

              /// Foreground Content
              Positioned(
                top: Get.height * 0.62, // 480/854 ~ 56%
                left: Get.width * 0.05, // 20/411 ~ 5%
                right: Get.width * 0.05,
                child: Column(
                  children: [
                    /// Logo
                    Center(
                      child: Image.asset(
                        "assets/images/finallogo.png",
                        width: Get.width * 0.45, // 180/411 ~ 45%
                      ),
                    ),
                    SizedBox(height: Get.height * 0.012), // ~10

                    Text(
                      "India's last minute app",
                      style: TextStyle(
                        fontSize: Get.width * 0.063, // ~26
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Log in or Sign Up",
                      style: TextStyle(
                        fontSize: Get.width * 0.039, // ~16
                        color: const Color.fromARGB(255, 81, 81, 81),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: Get.height * 0.012), // ~10

                    TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Enter mobile number",
                        prefixIcon: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: const BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "+91",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 8),
                            ],
                          ),
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.012), // ~10
                    GestureDetector(
                      onTap: () {
                        Get.to(OtpScreen());
                      },
                      child: Container(
                        height: Get.height * 0.06, // ~50
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            "Continue",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                              fontSize: Get.width * 0.044, // ~18
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
