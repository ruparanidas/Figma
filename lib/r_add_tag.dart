import 'package:day_27_28_29/widget/brand_colors.dart';
import 'package:flutter/material.dart';

class AddTag extends StatefulWidget {
  const AddTag({Key? key}) : super(key: key);

  @override
  State<AddTag> createState() => _AddTagState();
}

class _AddTagState extends State<AddTag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
    );
  }
}
