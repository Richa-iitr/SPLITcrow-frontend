
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:splitcrow/constants/constants.dart';

import 'package:splitcrow/screens/widgets/rounded_button.dart';
import 'package:splitcrow/screens/addmemeber.dart';
import 'package:splitcrow/screens/addexpense.dart';
import 'package:splitcrow/screens/settleup.dart';



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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
         Column(
          // mainAxisAlignment: MainAxisAlignment.center,

            children: [
              RoundedButton(btn_name: 'VIEW', press: () {
                showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            scrollable: true,
                            title: Text('${grp_name} Expenses'),
                            content: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Form(
                                child: Column(

                                  children: <Widget>[
                                   

                                        // Row(
                                        //   children: [Text(("You ") ,style: TextStyle(
                                        // fontSize: 15,
                                        //   fontWeight: FontWeight.w600,
                                        //   color: Color.fromARGB(255, 4, 129, 238),
                                        // ),),
                                        // Text(("owe Rs. 450.0 to "), style: TextStyle(
                                        // fontSize: 15,
                                        //   fontWeight: FontWeight.w600,
                                        //   color: Color.fromARGB(255, 86, 85, 85),
                                        // ),),
                                        // Text(("Mayank ") ,style: TextStyle(
                                        // fontSize: 15,
                                        //   fontWeight: FontWeight.w600,
                                        //   color: Color.fromARGB(255, 4, 129, 238),
                                        // ),),]),


                                        // Row(
                                        //   children: [Text(("You ") ,style: TextStyle(
                                        // fontSize: 15,
                                        //   fontWeight: FontWeight.w600,
                                        //   color: Color.fromARGB(255, 4, 129, 238),
                                        // ),),
                                        // Text(("owe Rs. 400.5 to "), style: TextStyle(
                                        // fontSize: 15,
                                        //   fontWeight: FontWeight.w600,
                                        //   color: Color.fromARGB(255, 86, 85, 85),
                                        // ),),
                                        // Text(("Parth ") ,style: TextStyle(
                                        // fontSize: 15,
                                        //   fontWeight: FontWeight.w600,
                                        //   color: Color.fromARGB(255, 4, 129, 238),
                                        // ),),]),


                                         Row(
                                          children: [Text(("Ashutosh ") ,style: TextStyle(
                                        fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromARGB(255, 4, 129, 238),
                                        ),),
                                        Text(("owes Rs. 450.0 to "), style: TextStyle(
                                        fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromARGB(255, 86, 85, 85),
                                        ),),
                                        Text(("Mayank ") ,style: TextStyle(
                                        fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromARGB(255, 4, 129, 238),
                                        ),),]),


                                        Row(
                                          children: [Text(("Pragyansh ") ,style: TextStyle(
                                        fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromARGB(255, 4, 129, 238),
                                        ),),
                                        Text(("owes Rs. 400.5 to "), style: TextStyle(
                                        fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromARGB(255, 86, 85, 85),
                                        ),),
                                        Text(("Parth ") ,style: TextStyle(
                                        fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromARGB(255, 4, 129, 238),
                                        ),),]),
                                        // Row(
                                        //   children: [Text(("Alice ") ,style: TextStyle(
                                        // fontSize: 15,
                                        //   fontWeight: FontWeight.w600,
                                        //   color: Color.fromARGB(255, 4, 129, 238),
                                        // ),),
                                        // Text(("owes Rs.20 to "), style: TextStyle(
                                        // fontSize: 15,
                                        //   fontWeight: FontWeight.w600,
                                        //   color: Color.fromARGB(255, 86, 85, 85),
                                        // ),),
                                        // Text(("Bill ") ,style: TextStyle(
                                        // fontSize: 15,
                                        //   fontWeight: FontWeight.w600,
                                        //   color: Color.fromARGB(255, 4, 129, 238),
                                        // ),),]),
                                        
                                  ],

                                ),
                              ),
                            ),
                           
                          );
                       },
                  );
             }),
             
           ]
             
        ),
        Column(children: [Text('    ')],),
        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [RoundedButton(btn_name: 'Add Member', press: () {
                showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            scrollable: true,
                            title: Text('Add Friend'),
                            content: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Form(
                                child: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Friend email',
                                        icon:
                                            Icon(Icons.people),
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
                                        btn_name: 'Add Friend', press: () {
                                          Navigator.push(
                                                          context,
                                              MaterialPageRoute(
                                               builder: (context) {
                                                return AddMember();
                                                },
                                              ),
                                          );
                                        })
                                  ]),
                              
                            ],
                          );
                        });
      })],),
       Column(children: [Text('    ')],),
        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [RoundedButton(btn_name: 'Settle Up', press: () {
                showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            scrollable: true,
                            title: Text('Settle'),
                            content: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Form(
                                child: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Member Mail',
                                        icon:
                                            Icon(Icons.people),
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Amount',
                                        icon:
                                            Icon(Icons.money),
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
                                        btn_name: 'Settle', press: () {
                                          Navigator.push(
                                                          context,
                                              MaterialPageRoute(
                                               builder: (context) {
                                                return SettleUp();
                                                },
                                              ),
                                          );
                                          showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              scrollable: true,
                                              title: Text('Settle'),
                                             
                                              content: Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: Form(
                                                  child: Column(
                                                    children: <Widget>[
                                                      const Divider(
                                                        height: 2,
                                                        thickness: 1,
                                                        indent: 10,
                                                        endIndent: 0,
                                                        color: Colors.black,
                                                      ),
                                                      Text('   '),
                                                      Text('Hurray! Expenses settled for mayank in ${grp_name}')
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              
                                            );
                                          });
                                          
                                        }),
                                      const Divider(
                                          height: 20,
                                          thickness: 5,
                                          indent: 20,
                                          endIndent: 0,
                                          color: Colors.black,
                                        ),
                                      RoundedButton(
                                        btn_name: 'UPI Pay', press: () {
                                          showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              scrollable: true,
                                              title: Text('Settle'),
                                             
                                              content: Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: Form(
                                                  child: Column(
                                                    children: <Widget>[
                                                      const Divider(
                                                        height: 2,
                                                        thickness: 1,
                                                        indent: 10,
                                                        endIndent: 0,
                                                        color: Colors.black,
                                                      ),
                                                      Text('   '),
                                                      Text('Coming Soon! Stay Tuned!')
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              
                                            );
                                          });
                                        }),
                                        ]
                                        ),
                                    
                            ],
                          );
                        });
      })],),
      
      
      ])
        
      ],
      ),
        
    );
  }
}