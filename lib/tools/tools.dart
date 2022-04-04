import 'package:atlas/shared/navbar.dart';
import 'package:flutter/material.dart';

class ToolScreen extends StatelessWidget {
  const ToolScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tools'),
      ),
      body: Text("one rep max"),
      bottomNavigationBar: NavBar(),
    );
  }
}
