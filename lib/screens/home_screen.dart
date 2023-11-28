import 'package:firststep_shopify/screens/login.dart';
import 'package:firststep_shopify/screens/signup.dart';
import 'package:flutter/material.dart';

import 'forgot_password.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedPage = 0;
  List<Widget> pages = [
    SignUp(),
    LogIn(),
    ForgotPassword(),
  ];
  changePage(int index){
    setState(() {
      selectedPage = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF5F6F8),
        title: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton( child: Text('Sign Up',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xff515C6F)),), onPressed: (){changePage(0);}),
            TextButton( child: Text('Log In',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xff515C6F)),), onPressed: () {changePage(1);}),
            TextButton( child: Text('Forgot Password',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xff515C6F)),), onPressed: () {changePage(2);}),
          ],
        ),
      ),
      body: pages[selectedPage],
    );
  }
}
