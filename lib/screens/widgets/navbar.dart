import 'package:flutter/material.dart';
import 'package:splitcrow/screens/group.dart';
import 'package:splitcrow/screens/home.dart';

class NavBar extends StatelessWidget {
  const NavBar ({ Key? key }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    bool atFriends = true;
    bool atGroup = false;
    return Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
          
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
                  return Home();
                },
              ),
            );
          },
          child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Friend ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color : Colors.white
                ),
              ),
            )
            )
          ],
        ),
      
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
                'Groups ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color : Colors.white
                ),
              ),
              )
            )
           
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Activity ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color : Colors.white
                ),
              ),
            )
           
          ],
        ),      
    ],
  ),
);
  }
}