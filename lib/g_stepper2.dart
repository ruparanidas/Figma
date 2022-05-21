import 'package:day_27_28_29/h_stepper3.dart';
import 'package:day_27_28_29/widget/brand_colors.dart';
import 'package:day_27_28_29/widget/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stepper2 extends StatefulWidget {
  const Stepper2({Key? key}) : super(key: key);

  @override
  State<Stepper2> createState() => _Stepper2State();
}

class _Stepper2State extends State<Stepper2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Row(
              children: [
                Icon(
                  Icons.keyboard_arrow_left,
                  color: aTextColor,
                  size: 30,
                ),
                SizedBox(
                  width: 170,
                ),
                SvgPicture.asset("asset/Slider3.svg")
              ],
            ),
          ),
          SizedBox(
            height: 160,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RoundButton(
                      title: "Create Your Own Team",
                      ontap: () {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Or',
                      style: myStyle(16, aTextColor, FontWeight.w700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RoundButton(
                      title: "Join Team",
                      ontap: () {},
                      isColor: true,
                    ),
                    SizedBox(
                      height: 200,
                    ),
                    SvgPicture.asset("asset/indicator.svg"),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
