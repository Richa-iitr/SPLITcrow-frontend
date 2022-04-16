import 'package:flutter/material.dart';
import 'package:splitcrow/screens/widgets/rounded_button.dart';


class TittleNav extends StatelessWidget {
  const TittleNav({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'SPLITcrow',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize:32
                ),
              ),
            ),
            
          ],
        ),
      ),
      /*3*/
      Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              RoundedButton(btn_name: 'Add Rs', press: () {
                showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            scrollable: true,
                            title: Text('ADD EXPENSE'),
                            content: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Form(
                                child: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'With you and ..',
                                        icon:
                                            Icon(Icons.social_distance_rounded),
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Description',
                                        icon:
                                            Icon(Icons.note),
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Amount',
                                        icon:
                                            Icon(Icons.money),
                                      ),
                                    ),
                                    Text('  '),
                                    Row(children: [
                                    Text('Paid by '),
                                    Text('and split '),],),
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
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [ const Text("     "),
             
            ],
          ),
      Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              
              RoundedButton(btn_name: 'Logout', press: () {})
             
            ],
          ),
    ],
  ),
 );
}
}