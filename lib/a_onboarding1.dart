import 'dart:math';

import 'package:day_27_28_29/b_onboarding2.dart';
import 'package:day_27_28_29/screen/splash_screen.dart';
import 'package:day_27_28_29/widget/brand_colors.dart';
import 'package:day_27_28_29/widget/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(children: [
        Positioned(
          top: -160,
          child: Transform.rotate(
            angle: pi / 6,
            child: Container(
              width: 480,
              height: 395,
              decoration: BoxDecoration(
                  color: aTextColorDark,
                  borderRadius: BorderRadius.circular(40)),
            ),
          ),
        ),
        Positioned(
            top: 20,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SplashScreen()));
                    },
                    icon: Icon(Icons.arrow_back))
              ],
            )),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Update Progress Your Work for The Team',
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
                                  builder: (context) => OnBoarding2()));
                        },
                        child: SvgPicture.asset("asset/Slider.svg"))),
              ),
              RoundButton(
                title: "Sign UP",
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
