import 'dart:math';

import 'package:day_27_28_29/d_login.dart';
import 'package:day_27_28_29/e_signup.dart';
import 'package:day_27_28_29/widget/brand_colors.dart';
import 'package:day_27_28_29/widget/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoarding3 extends StatefulWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  State<OnBoarding3> createState() => _OnBoarding3State();
}

class _OnBoarding3State extends State<OnBoarding3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(children: [
        Positioned(
          top: -150,
          child: Transform.rotate(
            angle: pi / 5,
            child: Container(
              width: 480,
              height: 395,
              decoration: BoxDecoration(
                  color: aTextColorDark,
                  borderRadius: BorderRadius.circular(40)),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Get Notified when you Get a New Assignment',
                style: myStyle(36, aTextColor, FontWeight.w700),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: SvgPicture.asset("asset/Slider (1).svg")),
              ),
              RoundButton(
                title: "Sign Up",
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SIgnUp()));
                },
              ),
              SizedBox(
                height: 16,
              ),
              RoundButton(
                title: "Log In",
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LogIn()));
                },
                isColor: true,
              ),
              SizedBox(
                height: 30,
              ),
              SvgPicture.asset("asset/indicator.svg"),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
