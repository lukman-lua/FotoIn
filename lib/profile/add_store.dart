import 'package:flutter/material.dart';

class AddStore extends StatelessWidget {

  // final _formKey = GlobalKey<FormFieldBuilder>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F7FF),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Store Registration',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 0.06,
          ),
        ),
        shadowColor: Color(0x14000000),
        toolbarHeight: 50,
      ),
      // body: ,
    );
  }
}
