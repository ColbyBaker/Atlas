import 'package:atlas/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Login')),
        body: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                    child: LoginButton(
                  icon: FontAwesomeIcons.userNinja,
                  text: "Continue as guest",
                  color: Colors.deepPurple,
                  loginMethod: AuthService().annonLogin,
                )),
                Flexible(
                    child: LoginButton(
                  icon: FontAwesomeIcons.google,
                  text: "Sign in with Google",
                  color: Colors.blue,
                  loginMethod: AuthService().googleLogin,
                ))
              ],
            )));
  }
}

class LoginButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  final Function loginMethod;

  const LoginButton(
      {Key? key,
      required this.color,
      required this.icon,
      required this.text,
      required this.loginMethod})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 10),
        child: ElevatedButton.icon(
          icon: Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(24),
            backgroundColor: color,
          ),
          onPressed: () => loginMethod(),
          label: Text(text),
        ));
  }
}
