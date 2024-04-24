import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AddStore extends StatelessWidget {

  final _formKey = GlobalKey<FormBuilderState>();

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
      body: FormBuilder(
        key: _formKey,
        child: Column(
          children: [
            FormBuilderTextField(
              name: "Store Name",
              onChanged: (val){
              },
              decoration: const InputDecoration(labelText: "Store Name"),
              // validator: FormBuilderValidators.compose([
              //   FormBuilderValidators.required(),
              //   FormBuilderValidators.email(),
              // ]),
            ),
          ],
        ),
      ),
    );
  }
}
