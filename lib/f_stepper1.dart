import 'package:day_27_28_29/widget/brand_colors.dart';
import 'package:day_27_28_29/widget/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stepper1 extends StatefulWidget {
  const Stepper1({Key? key}) : super(key: key);

  @override
  State<Stepper1> createState() => _Stepper1State();
}

class _Stepper1State extends State<Stepper1> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey();
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
                SvgPicture.asset("asset/Slider2.svg")
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Complete Your Profiles',
                style: myStyle(16, aTextColor, FontWeight.w700),
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: aGreyColor,
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 25,
                  color: aTextColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                    width: double.infinity,
                    child: Form(
                      key: _formkey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your Email Address',
                              style: myStyle(
                                16,
                                aTextColorDark,
                                FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                  hintText: 'Enter your full name',
                                  hintStyle:
                                      myStyle(16, aTextColor, FontWeight.w400),
                                  fillColor: Colors.transparent,
                                  filled: true,
                                  prefixIcon: Icon(
                                    Icons.account_circle_outlined,
                                    color: aTextColor,
                                    size: 20,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(
                                        color: aTextColorDark,
                                        width: 2,
                                      )),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(
                                        color: aTextColorDark,
                                        width: 2,
                                      ))),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Your Password',
                              style: myStyle(
                                16,
                                aTextColorDark,
                                FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              obscureText: true,
                              controller: _passwordController,
                              decoration: InputDecoration(
                                  hintText: 'Enter your password',
                                  hintStyle:
                                      myStyle(16, aTextColor, FontWeight.w400),
                                  fillColor: Colors.transparent,
                                  filled: true,
                                  prefixIcon: Icon(
                                    Icons.vpn_key_outlined,
                                    color: aTextColor,
                                    size: 20,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(
                                        color: aTextColorDark,
                                        width: 2,
                                      )),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(
                                        color: aTextColorDark,
                                        width: 2,
                                      ))),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            RoundButton(
                              title: "Continue",
                              ontap: () {},
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Text(
                                'Forget Your Password',
                                style: myStyle(
                                  16,
                                  aTextColorDark,
                                  FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 120,
                            ),
                            Center(
                                child: SvgPicture.asset("asset/indicator.svg")),
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
