import 'package:day_27_28_29/widget/brand_colors.dart';
import 'package:day_27_28_29/widget/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: Icon(Icons.close),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: Text(
              'Sign Up',
              style: myStyle(
                17,
                aTextColor,
                FontWeight.w700,
              ),
            ),
          )
        ],
      ),
      body: Padding(
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
                          hintText: 'Enter your email address',
                          hintStyle: myStyle(16, aTextColor, FontWeight.w400),
                          fillColor: Colors.transparent,
                          filled: true,
                          prefixIcon: Icon(
                            Icons.email_outlined,
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
                          hintStyle: myStyle(16, aTextColor, FontWeight.w400),
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
                      title: "Login",
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
                    Center(child: SvgPicture.asset("asset/indicator.svg")),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
