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