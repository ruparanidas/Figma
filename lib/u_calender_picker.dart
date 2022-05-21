import 'package:day_27_28_29/widget/brand_colors.dart';
import 'package:flutter/material.dart';

class CalenderPicker extends StatefulWidget {
  const CalenderPicker({Key? key}) : super(key: key);

  @override
  State<CalenderPicker> createState() => _CalenderPickerState();
}

class _CalenderPickerState extends State<CalenderPicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
    );
  }
}
