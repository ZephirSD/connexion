import 'package:flutter/material.dart';

class BouttonForm extends StatelessWidget {
  final Color backgroundButton;
  final Color texteCouleur;
  final String texteBoutton;
  final void Function() loginTest;
  BouttonForm(
    this.backgroundButton,
    this.texteBoutton, {
    this.loginTest = _voidTest,
    this.texteCouleur = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextButton(
        onPressed: () async {
          loginTest();
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
            style: TextStyle(color: texteCouleur),
          ),
        ),
      ),
    );
  }
}

dynamic _voidTest() {}
