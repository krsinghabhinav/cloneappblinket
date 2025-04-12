import 'package:cloneappblinket/screennn/page/otp_screen.dart';
import 'package:cloneappblinket/screennn/page/homeScreen.dart';
import 'package:cloneappblinket/screennn/page/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screennn/page/splashScreen.dart';

class AppRoutes {
  static const String homeScreen = '/homescreen';
  static const String bottombar = '/bottombar';
  static const String login = '/login';
  static const String opt = '/opt';
  static const String home = '/home';
  
  final appRouting = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: '/bottombar', page: () => BottomAppBar()),
    GetPage(name: '/login', page: () => LoginScreen()),
    GetPage(name: '/opt', page: () => OtpScreen()),
    GetPage(name: '/home', page: () => HomePage()),
  ];
}
