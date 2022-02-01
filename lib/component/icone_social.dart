import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Icone_Social extends StatelessWidget {
  final IconData icon;
  Icone_Social(this.icon);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: ElevatedButton(
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            primary: HexColor("#ba7b87"),
          ),
        ),
      ),
    );
  }
}
