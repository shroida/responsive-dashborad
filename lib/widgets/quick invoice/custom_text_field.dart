import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            fillColor: const Color(0xfffafafa),
            filled: true,
            border: outlineInputBorder(),
            enabledBorder: outlineInputBorder(),
            focusedBorder: outlineInputBorder()
            
            ));
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color(0xfffafafa),
        ),
        borderRadius: BorderRadius.circular(12));
  }
}
