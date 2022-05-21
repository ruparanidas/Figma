import 'package:day_27_28_29/widget/brand_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stepper3 extends StatefulWidget {
  const Stepper3({Key? key}) : super(key: key);

  @override
  State<Stepper3> createState() => _Stepper3State();
}

class _Stepper3State extends State<Stepper3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
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
                SvgPicture.asset("asset/Slider4.svg")
              ],
            ),
          ),
          Text('Create Your Own Team?',style: myStyle(16,aTextColor,FontWeight.w700),),
          Column(
            children: [
              Text('Create Your Own Team?')
              
            ],
          )
        ],
      ),
    );
  }
}
