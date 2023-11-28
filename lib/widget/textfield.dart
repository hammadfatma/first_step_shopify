import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TxtField extends StatelessWidget {
  TxtField({super.key,this.text,this.icon,this.obscureTxt});
  String? text;
  Icon? icon;
  bool? obscureTxt;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.white),
      child: TextFormField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xffFF6969),
        obscureText: obscureTxt!,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: icon,
          iconColor: Color(0xff727C8E),
          label: Text(
            text!,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff515C6F),
            ),
          ),
        ),
      ),
    );
  }
}
