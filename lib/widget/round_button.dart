import 'package:day_27_28_29/widget/brand_colors.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton({Key? key, this.isColor, this.ontap, this.title})
      : super(key: key);

  String? title;
  VoidCallback? ontap;
  bool? isColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: double.infinity,
        height: 56,
        padding: EdgeInsets.symmetric(
          vertical: 17,
          horizontal: 16,
        ),
        onPressed: ontap,
        color: isColor == null ? buttonColor : Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
            side: BorderSide(
                width: 2,
                color: isColor == null ? Colors.transparent : aTextColorDark)),
        child: Text(
          '$title',
          style: myStyle(17, aTextColor, FontWeight.w600),
        ));
  }
}
