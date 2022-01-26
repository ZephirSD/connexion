import 'package:connexion/main.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FormText(false, "Entrez votre email", Icons.email),
          ],
        ),
      ),
    );
  }
}

class FormText extends StatelessWidget {
  bool boolObscureText;
  String textField;
  IconData iconField;
  FormText(this.boolObscureText, this.textField, this.iconField);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
      child: TextFormField(
        obscureText: boolObscureText,
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          labelText: "test",
          labelStyle: TextStyle(color: Colors.white, fontSize: 16.0),
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.ac_unit,
              color: Colors.white,
            ),
          ),
        ),
        style: TextStyle(fontSize: 20.0, color: Colors.white),
      ),
    );
  }
}
