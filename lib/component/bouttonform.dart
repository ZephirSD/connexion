import 'package:flutter/material.dart';
import 'package:connexion/main.dart';

class BouttonForm extends StatelessWidget {
  final Color backgroundButton;
  final String texteBoutton;
  final Widget test;
  BouttonForm(this.backgroundButton, this.texteBoutton, this.test);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextButton(
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => test,
            ),
          ),
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            backgroundButton,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            texteBoutton,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
