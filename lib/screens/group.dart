import 'package:flutter/material.dart';
import 'package:splitcrow/constants/constants.dart';
import 'package:splitcrow/screens/widgets/tittle_nav.dart';
import 'package:splitcrow/screens/widgets/navbar.dart';
import 'package:splitcrow/screens/widgets/friend_list.dart';
import 'package:splitcrow/screens/widgets/group_list.dart';
import 'package:splitcrow/screens/widgets/rounded_button.dart';


class Group extends StatelessWidget {
  const Group({ Key? key }) : super(key: key);

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
              GroupContainer(grp_name: 'roomies', grp_balance: 18),
              GroupContainer(grp_name: 'roomies', grp_balance: 0),
              GroupContainer(grp_name: 'roomies', grp_balance: -18),
              GroupContainer(grp_name: 'roomies', grp_balance: 17.98),
              //GroupContainer(),
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