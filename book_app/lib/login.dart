import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                const SizedBox(height: 100.0),
                Image.asset('assets/alu_logo.png'),
                const SizedBox(
                  height: 38.0,
                ),
                const Text('Login with student email',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blueAccent,
                    )),
              ],
            ),
            const SizedBox(
              height: 60.0,
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(fontSize: 20.0),
                filled: true,
              ),
            ),
            const SizedBox(
              height: 60.0,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(fontSize: 20.0),
                  filled: true),
            ),
            const SizedBox(
              height: 60.0,
            ),
            Column(
              children: <Widget>[
                ButtonTheme(
                  height: 50,
                  disabledColor: Colors.blueAccent,
                  child: RaisedButton(
                    onPressed: null,
                    disabledElevation: 4.0,
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
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
