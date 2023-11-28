import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ElevatedBtn extends StatelessWidget {
  ElevatedBtn({super.key,this.text});
  String? text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffFF6969),
        foregroundColor: Colors.white,
        minimumSize: Size(200, 60),
      ),
      onPressed: () {},
      child: Row(
        children: [
          SizedBox(
            width: 100,
          ),
          Text(
            text!,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(
            width: 77,
          ),
          Transform.rotate(
            angle: -90 * 3.1415927 / 180,
            child: Icon(Icons.expand_circle_down,size: 40,),
          ),
        ],
      ),
    );
  }
}
