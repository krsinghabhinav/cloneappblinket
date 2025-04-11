import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';

import 'controller/auth_controller.dart';
import 'screen/otp_screen.dart';
import 'screen/phone_input_screen.dart';
import 'screen/spalcescreen.dart/CategoryNavigationScreen.dart';
import 'screen/spalcescreen.dart/banner2.dart';
import 'screen/page/login.dart';
import 'screen/page/fiestpage.dart';
import 'screen/spalcescreen.dart/reg.dart';
import 'screen/page/registrataion.dart';
import 'screen/page/home.dart';

void main() {
  AuthController authController = Get.put(AuthController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: EnhancedSplashScreen(),
    );
  }
}
