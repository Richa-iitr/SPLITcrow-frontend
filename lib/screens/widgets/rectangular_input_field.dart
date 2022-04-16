import 'package:flutter/material.dart';
import 'package:splitcrow/constants/constants.dart';
import 'package:splitcrow/screens/widgets/neumorphic_text_field_container.dart';

class RectangularInputField extends StatelessWidget {

  final String hintText;
  final IconData icon;
  final bool obscureText;

  const RectangularInputField({Key? key, required this.hintText, required this.icon, required this.obscureText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicTextFieldContainer(
      child: TextField(
        style: TextStyle(color: Colors. white),
        cursorColor: Colors.white,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          helperStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          prefixIcon: Icon(icon,color: Colors.white,size: 20,),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
