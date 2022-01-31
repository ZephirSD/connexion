import 'package:flutter/material.dart';

class BouttonForm extends StatelessWidget {
  final Color backgroundButton;
  final String texteBoutton;
  final Widget test;
  final void Function() loginTest;
  BouttonForm(this.backgroundButton, this.texteBoutton, this.test,
      {this.loginTest = _voidTest});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => test,
            ),
          );
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
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

dynamic _voidTest() {}
