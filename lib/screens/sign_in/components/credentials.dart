import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splitcrow/constants/constants.dart';
import 'package:splitcrow/screens/widgets/rectangular_button.dart';
import 'package:splitcrow/screens/widgets/rectangular_input_field.dart';
import 'package:splitcrow/screens/sign_up/sigup_screen.dart';
import 'package:splitcrow/screens/widgets/account_check.dart';
import 'package:splitcrow/screens/widgets/rounded_button.dart';
import 'package:splitcrow/screens/group.dart';

class Credentials extends StatelessWidget {
  const Credentials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RectangularInputField(
            hintText: 'Email',
            icon: Icons.email_rounded,
            obscureText: false,
          ),
          SizedBox(
            height: appPadding / 2,
          ),
          RectangularInputField(
            hintText: 'Password',
            icon: Icons.lock,
            obscureText: true,
          ),
          SizedBox(
            height: appPadding / 2,
          ),
          Center(
            child: Text(
              'Forget Password?',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ),
          RectangularButton(text: 'Sign In', press: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Group();
                },
              ),
            );
          }),
          AccountCheck(
          login: true,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignUpScreen();
                },
              ),
            );
          },
        ),
        ],
      ),
    );
  }
}
