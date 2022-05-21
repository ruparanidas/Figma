import 'package:day_27_28_29/widget/brand_colors.dart';
import 'package:flutter/material.dart';

class FormUserInput extends StatefulWidget {
  FormUserInput({Key? key, this.title, this.icon}) : super(key: key);
  String? title;
  dynamic? icon;

  @override
  State<FormUserInput> createState() => _FormUserInputState();
}

class _FormUserInputState extends State<FormUserInput> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    GlobalKey<FormState> _formkey = GlobalKey();
    return Scaffold(
      body: Container(
          width: double.infinity,
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      hintText: 'Enter Email',
                      hintStyle: myStyle(16, aTextColor, FontWeight.w400),
                      fillColor: Colors.transparent,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: aTextColor,
                        size: 20,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: aTextColorDark,
                            width: 2,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: aTextColorDark,
                            width: 2,
                          ))),
                ),
                TextField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                      hintText: 'Enter Email',
                      hintStyle: myStyle(16, aTextColor, FontWeight.w400),
                      fillColor: Colors.transparent,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: aTextColor,
                        size: 20,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: aTextColorDark,
                            width: 2,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: aTextColorDark,
                            width: 2,
                          ))),
                )
              ],
            ),
          )),
    );
  }
}
