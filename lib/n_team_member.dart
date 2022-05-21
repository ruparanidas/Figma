import 'package:day_27_28_29/widget/brand_colors.dart';
import 'package:flutter/material.dart';

class TeamMember extends StatefulWidget {
  const TeamMember({Key? key}) : super(key: key);

  @override
  State<TeamMember> createState() => _TeamMemberState();
}

class _TeamMemberState extends State<TeamMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
    );
  }
}
