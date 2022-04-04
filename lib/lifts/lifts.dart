import 'package:atlas/shared/navbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LiftsScreen extends StatelessWidget {
  const LiftsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lifts'),
      ),
      body: Center(
        child: Icon(
          FontAwesomeIcons.dumbbell,
          size: 20,
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
