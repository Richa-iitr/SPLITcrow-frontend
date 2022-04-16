
import 'package:flutter/material.dart';
import 'package:splitcrow/constants/constants.dart';

import 'package:splitcrow/screens/widgets/rounded_button.dart';



class GroupContainer extends StatelessWidget {
  final String grp_name;
  final double grp_balance;

  const GroupContainer({Key? key, required this.grp_name, required this.grp_balance})
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
            Text( grp_name , style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),),
          Text((grp_balance==0?"settled": grp_balance>0 ? "${grp_name} owes you Rs. ${grp_balance}" : "you owe Rs.${grp_balance} ") ,style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: grp_balance==0?Color.fromARGB(255, 86, 85, 85) : grp_balance>0 ? Color.fromARGB(255, 123, 240, 127) : Color.fromARGB(255, 245, 155, 76),
          ),)
          ],
        ),
         Column(
          mainAxisAlignment: MainAxisAlignment.center,

            children: [
              RoundedButton(btn_name: 'VIEW', press: () {})
             
            ],
        )
        
        
      ],
      ),
        
    );
  }
}