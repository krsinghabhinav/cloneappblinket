import 'package:cloneappblinket/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';

import 'controller/auth_controller.dart';
import 'screennn/bottomNavigationBar/BottomNavBar.dart';
import 'screennn/page/otp_screen.dart';
import 'screennn/testpages/phone_input_screen.dart';

import 'screennn/page/loginScreen.dart';
import 'screennn/page/splashScreen.dart';
import 'screennn/page/registrataionScreen.dart';
import 'screennn/page/homeScreen.dart';

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
      // getPages: AppRoutes.routes,
      // initialRoute: AppRoutes.homeScreen,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashScreen(),
    );
  }
}
