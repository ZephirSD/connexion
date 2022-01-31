import 'package:connexion/main.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'main.dart';

class NavbarAccueil extends StatelessWidget {
  const NavbarAccueil({Key? key}) : super(key: key);

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
            onPressed: () async {
              await FirebaseAuth.instance.signOut();

              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => NavbarConnexion(),
                ),
              );
            },
          ),
        ),
        body: Accueil(),
      ),
    );
  }
}

class Accueil extends StatefulWidget {
  Accueil({Key? key}) : super(key: key);

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  String utilisateur = "Test";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Bonjour " + utilisateur,
          style: GoogleFonts.montserrat(fontSize: 25, color: Colors.white),
        ),
      ),
    );
  }
}
