import 'package:flutter/material.dart';
import 'package:splitcrow/constants/constants.dart';
import 'package:splitcrow/screens/sign_in/sigin_screen.dart';
import 'package:splitcrow/screens/widgets/account_check.dart';
import 'package:splitcrow/screens/widgets/rounded_button.dart';

class Social extends StatelessWidget {
  const Social({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'OR',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: appPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //RoundedButton(imageSrc: 'assets/images/google.png', press: () {}),
              //RoundedButton(
                //  imageSrc: 'assets/images/facebook.png', press: () {}),
              //RoundedButton(
                //  imageSrc: 'assets/images/twitter.png', press: () {}),
            ],
          ),
        ),
        SizedBox(
          height: appPadding,
        ),
        AccountCheck(
          login: false,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignInScreen();
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
