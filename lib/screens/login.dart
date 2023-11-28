import 'package:flutter/material.dart';

import '../widget/button.dart';
import '../widget/textfield.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6F8),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          children: [
            // Text(
            //   'Log In',
            //   style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 30,
            //       color: Color(0xff515C6F)),
            // ),
            SizedBox(
              height: 25,
            ),
            TxtField(
              icon: Icon(Icons.person_outline),
              obscureTxt: false,
              text: 'USERNAME / EMAIL',
            ),
            TxtField(
              icon: Icon(Icons.shopping_bag_outlined),
              obscureTxt: true,
              text: 'PASSWORD',
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedBtn(
              text: 'LOG IN',
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 244,
              child: RichText(
                text: TextSpan(
                  text: 'Don’t have an account? Swipe right to ',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff515C6F),
                  ),
                  children: [
                    TextSpan(
                      text: 'create a new account.',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color(0xffFF6969),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
