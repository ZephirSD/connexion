import 'package:flutter/material.dart';

class FormText extends StatelessWidget {
  bool boolObscureText;
  final String labelText;
  final IconData iconField;
  FormText(this.boolObscureText, this.labelText, this.iconField);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
      child: TextFormField(
        obscureText: boolObscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.white, fontSize: 16.0),
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              iconField,
              color: Colors.white,
            ),
          ),
        ),
        style: TextStyle(fontSize: 20.0, color: Colors.white),
      ),
    );
  }
}
