import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splitcrow/constants/constants.dart';
import 'package:splitcrow/screens/sign_in/components/social.dart';
import 'package:splitcrow/screens/widgets/account_check.dart';
import 'package:splitcrow/screens/widgets/rounded_button.dart';
import 'components/credentials.dart';
import 'components/head_text.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            lightPrimary,
            darkPrimary,
          ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadText(),
              Credentials(),
              //Social(),
            ],
          ),
        ),
      ),
    );
  }
}
