import 'package:flutter/material.dart';
import 'package:splitcrow/screens/group.dart';
//import 'package:splitcrow/screens/add.dart';

class NavBar extends StatelessWidget {
  const NavBar ({ Key? key }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    
    return Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
          
          
      
      /*3*/
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            GestureDetector(
              onTap:() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Group();
                },
              ),
            );
          } ,
              child : Padding( 
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Groups Activity',
                style: TextStyle(
                  fontFamily: 'RaleWay',
                  fontWeight: FontWeight.bold,
                  color : Colors.white,
                  fontSize: 26,

                ),
              ),
              )
            )
           
          ],
        ),

             
    ],
  ),
);
  }
}