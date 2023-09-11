import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: InkWell(
            onTap: () async {
              await FirebaseAuth.instance.signInAnonymously();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => MyHomePage()));
            },
            child: Text("Go Annonymous")),
      ),
    );
  }
}
