import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'enregistrer.dart';
import 'component/formtext.dart';
import 'component/bouttonform.dart';
import 'motdepasseoublie.dart';
import 'acceuil.dart';

void main() => runApp(NavbarConnexion());

class NavbarConnexion extends StatelessWidget {
  const NavbarConnexion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: HexColor("#090c22"),
        body: Connexion(),
      ),
    );
  }
}

class Connexion extends StatefulWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  _ConnexionState createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 45.0),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1642790391931-5c92f126809f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
              ),
            ),
            FormText(false, "Entrez votre nom", Icons.account_box),
            FormText(true, "Entrez votre mot de passe", Icons.lock_open),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavbarMotPasseOublie(),
                    ),
                  ),
                },
                child: Text(
                  "Mot de passe oublié ?",
                  textAlign: TextAlign.right,
                  style: TextStyle(color: HexColor("#ba7b87")),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BouttonForm(
                    HexColor("#ba947a"), "Enregister", NavbarEnregistrer()),
                BouttonForm(
                    HexColor("#ba7b87"), "Se connecter", NavbarAccueil()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
