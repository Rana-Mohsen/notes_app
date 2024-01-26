import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CutomTextField extends StatelessWidget {
  const CutomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
          decoration: InputDecoration(
            hintText: 'Title',
            // border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(kPrimaryColor)
          ),
        );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
            borderSide: BorderSide(color: color?? Colors.white),
            borderRadius: BorderRadius.circular(8)
          );
  }
}