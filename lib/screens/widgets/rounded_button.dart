import 'package:flutter/material.dart';
import 'package:splitcrow/constants/constants.dart';

class RoundedButton extends StatelessWidget {
  final String btn_name;
  final VoidCallback press;

  const RoundedButton({Key? key, required this.btn_name, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(top: appPadding,bottom: appPadding /4),
        child: Container(
          padding: EdgeInsets.all(appPadding / 4),
          // width: 60,
          height: 30,
          decoration: BoxDecoration(
              //shape: BoxShape.circle,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    darkPrimary,
                    lightPrimary,
                  ]
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(2,2),
                  spreadRadius: 0.5,
                  blurRadius: 1,
                  color: darkShadow,
                ),
                BoxShadow(
                  offset: Offset(-3,-3),
                  spreadRadius: 0.5,
                  blurRadius: 1,
                  color: lightShadow,
                ),
              ]
          ),
          child: Text(btn_name,style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),),
        ),
      ),
    );
  }
}
