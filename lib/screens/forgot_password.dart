import 'package:firststep_shopify/widget/textfield.dart';
import 'package:flutter/material.dart';

import '../widget/button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6F8),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          children: [
            // Text(
            //   'Forgot Password',
            //   style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 30,
            //       color: Color(0xff515C6F)),
            // ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 300,
              child: Text(
                'Enter the email address you used to create your account and we will email you a link to reset your password',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff515C6F),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TxtField(
              icon: Icon(Icons.email_outlined),
              obscureTxt: false,
              text: 'EMAIL',
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedBtn(
              text: 'SEND EMAIL',
            ),
          ],
        ),
      ),
    );
  }
}
