import 'package:connexion/acceuil.dart';
import 'package:connexion/main.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'component/formtext.dart';
import 'component/bouttonform.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'acceuil.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'component/create_user.dart';

TextEditingController nom = TextEditingController();
TextEditingController motdepasse = TextEditingController();
TextEditingController motdepasse2 = TextEditingController();
TextEditingController email = TextEditingController();
FirebaseAuth auth = FirebaseAuth.instance;
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class NavbarEnregistrer extends StatelessWidget {
  const NavbarEnregistrer({Key? key}) : super(key: key);

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
        body: Enregistrer(),
      ),
    );
  }
}

class Enregistrer extends StatefulWidget {
  Enregistrer({Key? key}) : super(key: key);

  @override
  State<Enregistrer> createState() => _EnregistrerState();
}

class _EnregistrerState extends State<Enregistrer> {
  loginEnregister() {
    String nomLogin = nom.text;
    String motdepasseLogin = motdepasse.text;
    String motdepasseLogin2 = motdepasse2.text;
    String emailLogin = email.text;
    print(nomLogin + motdepasseLogin + emailLogin);
    if (motdepasseLogin == motdepasseLogin2) {
      print('Valide');
      return motdepasse2;
    } else {
      print('Non Valide');
    }
  }

  onpressFonctionEnregister() async {
    if (_formKey.currentState!.validate()) {
      User? user = await FireAuth.registerUsingEmailPassword(
          email: email.text, password: motdepasse.text);
      if (user != null) {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => NavbarAccueil()),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Text(
                  "Cr??ation de compte",
                  style:
                      GoogleFonts.montserrat(fontSize: 30, color: Colors.white),
                ),
              ),
              FormText(false, "Entrez votre nom", Icons.account_box, nom),
              FormText(true, "Entrez votre mot de passe", Icons.lock_open,
                  motdepasse),
              FormText(true, "Remettez votre mot de passe", Icons.lock_open,
                  motdepasse2),
              FormText(false, "Entrez votre email", Icons.email, email),
              BouttonForm(
                HexColor("#ba7b87"),
                "S'enregister",
                loginTest: onpressFonctionEnregister,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
