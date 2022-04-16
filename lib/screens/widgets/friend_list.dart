import 'package:flutter/material.dart';
import 'package:splitcrow/constants/constants.dart';

import 'package:splitcrow/screens/widgets/rounded_button.dart';

class FriendContainer extends StatelessWidget {
  final String frnd_username;
  final double frnd_balance;

  const FriendContainer(
      {Key? key, required this.frnd_username, required this.frnd_balance})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                frnd_username,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Text(
                (frnd_balance == 0
                    ? "settled"
                    : frnd_balance > 0
                        ? "${frnd_username} owes you Rs. ${frnd_balance}"
                        : "you owe Rs.${frnd_balance} "),
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: frnd_balance == 0
                      ? Color.fromARGB(255, 86, 85, 85)
                      : frnd_balance > 0
                          ? Color.fromARGB(255, 123, 240, 127)
                          : Color.fromARGB(255, 245, 155, 76),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundedButton(
                  btn_name: 'Settle',
                  press: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            scrollable: true,
                            title: Text('Settle Up'),
                            content: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Form(
                                child: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Amount',
                                        icon:
                                            Icon(Icons.social_distance_rounded),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            actions: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RoundedButton(
                                        btn_name: 'Submit', press: () {})
                                  ]),
                              Divider(color: Colors.black),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RoundedButton(
                                        btn_name: 'UPI PAY', press: () {})
                                  ]),
                            ],
                          );
                        });
                  })
            ],
          )
        ],
      ),
    );
  }
}
