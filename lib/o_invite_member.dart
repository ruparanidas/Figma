import 'package:day_27_28_29/widget/brand_colors.dart';
import 'package:flutter/material.dart';

class InviteMember extends StatefulWidget {
  const InviteMember({Key? key}) : super(key: key);

  @override
  State<InviteMember> createState() => _InviteMemberState();
}

class _InviteMemberState extends State<InviteMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
    );
  }
}
