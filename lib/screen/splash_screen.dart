import 'package:day_27_28_29/widget/brand_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 96,
              width: 96,
              color: secondaryColor,
              margin: EdgeInsets.only(bottom: 32),
              padding: EdgeInsets.all(30),
              child: SvgPicture.asset("asset/splashicon.svg"),
            ),
            Text(
              "RANCING",
              style: myStyle(36, aTextColor, FontWeight.w700),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Your Personal Task Manager",
              style: myStyle(17, aTextColorDark, FontWeight.w400),
            ),
            SizedBox(
              height: 200,
            ),
            MaterialButton(
              padding: EdgeInsets.symmetric(
                vertical: 17,
                horizontal: 16,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("onboarding1");
              },
              color: buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Getting Started",
                    style: myStyle(17, aTextColor, FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SvgPicture.asset("asset/indicator.svg"),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
