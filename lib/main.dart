import 'package:connexion/acceuil.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'enregistrer.dart';
import 'component/formtext.dart';
import 'component/bouttonform.dart';
import 'motdepasseoublie.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'component/connexion_user.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'component/icone_social.dart';

TextEditingController nom = TextEditingController();
TextEditingController motdepasse = TextEditingController();
FirebaseAuth auth = FirebaseAuth.instance;
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(NavbarConnexion());
}

class NavbarConnexion extends StatelessWidget {
  const NavbarConnexion({Key? key}) : super(key: key);
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

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
  onpressFonction() async {
    if (_formKey.currentState!.validate()) {
      User? user = await FireAuth.registerUsingEmailPassword(
          email: nom.text, password: motdepasse.text);
      if (user != null) {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => NavbarAccueil()),
        );
      }
    }
  }

  onpressFonctionNavigator() {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NavbarEnregistrer(),
      ),
    );
  }

  onpressFonctionNavigator2() {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NavbarMotPasseOublie(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        child: Center(
          child: Column(
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
              FormText(false, "Entrez votre nom utilisateur", Icons.account_box,
                  nom),
              FormText(true, "Entrez votre mot de passe", Icons.lock_open,
                  motdepasse),
              BouttonForm(
                Colors.transparent,
                "Mot de passe oubli?? ?",
                texteCouleur: HexColor("#ba7b87"),
                loginTest: onpressFonctionNavigator2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BouttonForm(
                    HexColor("#ba947a"),
                    "Enregister",
                    loginTest: onpressFonctionNavigator,
                  ),
                  BouttonForm(
                    HexColor("#ba7b87"),
                    "Se Connecter",
                    loginTest: onpressFonction,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(60, 35, 60, 10),
                child: Column(
                  children: [
                    Text(
                      "Connectez-vous avec",
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      children: [
                        Icone_Social(FontAwesomeIcons.apple),
                        Icone_Social(FontAwesomeIcons.google),
                        Icone_Social(FontAwesomeIcons.facebook),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
