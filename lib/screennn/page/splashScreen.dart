import 'package:cloneappblinket/screennn/bottomNavigationBar/BottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'loginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      // Your code after 3 seconds delay
      print("Executed after 3 seconds");
      Get.offAll(Bottomnavbar());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        138,
        247,
        151,
      ), // Blinkit yellow
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              /// Top Logo and Tagline
              Center(
                child: Column(
                  children: [
                    SizedBox(height: Get.height * 0.02),
                    Image.asset(
                      "assets/images/finallogo.png",
                      height: Get.height * 0.12,
                      width: Get.width * 0.6,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'India\'s Last Minute App',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: Get.height * 0.04),

              /// Delivery Promise
              Column(
                children: const [
                  Text(
                    '10,000+ products',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'delivered in 10 minutes',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                  ),
                ],
              ),

              SizedBox(height: Get.height * 0.06),

              /// Free Delivery Card
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 228, 240, 235),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'FREE\n',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: 'DELIVERY',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      width: double.infinity,
                      height: Get.height * 0.06,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'on your first 10 orders',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            height: Get.height * 0.045,
                            width: Get.height * 0.045,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Lottie.network(
                              'https://assets9.lottiefiles.com/packages/lf20_ydo1amjm.json',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),

              /// Bottom Delivery Animation
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: Get.height * 0.07,
                    decoration: const BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                      ),
                    ),
                  ),
                  Lottie.asset(
                    'assets/animations/Animation - 1744284941647.json',
                    height: Get.height * 0.35,
                    fit: BoxFit.contain,
                  ),
                ],
              ),

              // SizedBox(height: Get.height * 0.005),
            ],
          ),
        ),
      ),
    );
  }
}
