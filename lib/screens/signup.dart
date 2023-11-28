import 'package:flutter/material.dart';

import '../widget/button.dart';
import '../widget/textfield.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6F8),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          children: [
            // Text(
            //   'Sign Up',
            //   style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 30,
            //       color: Color(0xff515C6F)),
            // ),
            SizedBox(
              height: 25,
            ),
            TxtField(
              icon: Icon(Icons.email_outlined),
              obscureTxt: false,
              text: 'EMAIL',
            ),
            TxtField(
              icon: Icon(Icons.person_outline),
              obscureTxt: false,
              text: 'USERNAME',
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
              text: 'SIGN UP',
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 244,
              child: RichText(
                text: TextSpan(
                  text: 'By creating an account, you agree to our ',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff515C6F),
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color(0xffFF6969),
                      ),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff515C6F),
                      ),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
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
