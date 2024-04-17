import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  static const route = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photoin"),
      ),
      body: const Center(
        child: Text(
          "Profile",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
