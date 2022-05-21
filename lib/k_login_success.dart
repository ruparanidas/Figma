import 'package:day_27_28_29/widget/brand_colors.dart';
import 'package:flutter/material.dart';

class LoginSuccessful extends StatefulWidget {
  const LoginSuccessful({Key? key}) : super(key: key);

  @override
  State<LoginSuccessful> createState() => _LoginSuccessfulState();
}

class _LoginSuccessfulState extends State<LoginSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
    );
  }
}
