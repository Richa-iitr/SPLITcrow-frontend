import 'package:flutter/material.dart';
import 'package:splitcrow/constants/constants.dart';
import 'package:splitcrow/screens/widgets/tittle_nav.dart';
import 'package:splitcrow/screens/widgets/navbar.dart';
import 'package:splitcrow/screens/widgets/friend_list.dart';
import 'package:splitcrow/screens/widgets/group_list.dart';
import 'package:splitcrow/screens/widgets/rounded_button.dart';


class Home extends StatelessWidget {
  //bool atHome; 
  Home({ Key? key}) : super(key: key);

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
              TittleNav(),
              NavBar(),
              FriendContainer(frnd_username: 'sakshi', frnd_balance: 18),
              FriendContainer(frnd_username: 'sakshi', frnd_balance: 18),
              FriendContainer(frnd_username: 'sakshi', frnd_balance: 18),
              FriendContainer(frnd_username: 'sakshi', frnd_balance: 18),
              //FriendContainer(),
              //Social(),
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: appPadding),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              RoundedButton(btn_name: ' + Add', press: () {}),
              
            ],
          ),
        )
            ],
          ),
        ),
      ),
    );
  }
}