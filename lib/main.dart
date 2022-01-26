import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'enregistrer.dart';

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.white),
                  ),
                  labelText: 'Entrez votre nom',
                  labelStyle: TextStyle(color: Colors.white, fontSize: 16.0),
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(Icons.email, color: Colors.white),
                  ),
                ),
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              child: TextFormField(
                obscureText: true,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.white),
                  ),
                  labelText: 'Entrez votre mot de passe',
                  labelStyle: TextStyle(color: Colors.white, fontSize: 16.0),
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(Icons.lock_open, color: Colors.white),
                  ),
                ),
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () => {},
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
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavbarEnregistrer(),
                        ),
                      ),
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        HexColor("#ba947a"),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Enregistrer",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextButton(
                    onPressed: () => {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        HexColor("#ba7b87"),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Connextion",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
