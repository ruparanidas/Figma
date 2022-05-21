import 'dart:math';

import 'package:day_27_28_29/c_onboarding3.dart';
import 'package:day_27_28_29/widget/brand_colors.dart';
import 'package:day_27_28_29/widget/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  State<OnBoarding2> createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
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
                'Create a Task and Assign it to Your Team Members',
                style: myStyle(36, aTextColor, FontWeight.w700),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OnBoarding3()));
                        },
                        child: SvgPicture.asset("asset/Slider1.svg"))),
              ),
              RoundButton(
                title: "Sign Up",
                ontap: () {},
              ),
              SizedBox(
                height: 16,
              ),
              RoundButton(
                title: "Log In",
                ontap: () {},
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
