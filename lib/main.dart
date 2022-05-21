import 'package:day_27_28_29/a_onboarding1.dart';
import 'package:day_27_28_29/b_onboarding2.dart';
import 'package:day_27_28_29/c_onboarding3.dart';
import 'package:day_27_28_29/d_login.dart';
import 'package:day_27_28_29/e_signup.dart';
import 'package:day_27_28_29/f_stepper1.dart';
import 'package:day_27_28_29/g_stepper2.dart';
import 'package:day_27_28_29/h_stepper3.dart';
import 'package:day_27_28_29/screen/splash_screen.dart';
import 'package:day_27_28_29/widget/form.dart';
import 'package:day_27_28_29/x_my_task.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "splashscreen": (BuildContext context) => SplashScreen(),
        "onboarding1": (BuildContext context) => OnBoarding1(),
        "onboarding2": (BuildContext context) => OnBoarding2(),
        "onboarding3": (BuildContext context) => OnBoarding3(),
        "login": (BuildContext context) => LogIn(),
      },
      home: Stepper3(),
      debugShowCheckedModeBanner: false,
    );
  }
}
