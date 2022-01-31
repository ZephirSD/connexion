import 'package:connexion/main.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'component/formtext.dart';
import 'component/bouttonform.dart';
import 'acceuil.dart';
import 'main.dart';

TextEditingController email = TextEditingController();

class NavbarMotPasseOublie extends StatelessWidget {
  const NavbarMotPasseOublie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: HexColor("#090c22"),
        appBar: AppBar(
          backgroundColor: HexColor("#090c22"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NavbarConnexion()),
              );
            },
          ),
        ),
        body: MotPasseOublie(),
      ),
    );
  }
}

class MotPasseOublie extends StatefulWidget {
  MotPasseOublie({Key? key}) : super(key: key);

  @override
  State<MotPasseOublie> createState() => _MotPasseOublieState();
}

class _MotPasseOublieState extends State<MotPasseOublie> {
  test() {}
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FormText(false, "Entrez votre email", Icons.email, email),
            BouttonForm(
              HexColor("#ba7b87"),
              "Reinitialiser le mot de passe",
            )
          ],
        ),
      ),
    );
  }
}
