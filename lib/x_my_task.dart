import 'package:day_27_28_29/widget/brand_colors.dart';
import 'package:flutter/material.dart';

class MyTask extends StatefulWidget {
  const MyTask({Key? key}) : super(key: key);

  @override
  State<MyTask> createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
    );
  }
}
