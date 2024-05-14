import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddStore extends StatelessWidget {

  final _formKey = GlobalKey<FormBuilderState>();
  final _input_decor = const InputDecoration(
    labelStyle: TextStyle(
      color: Colors.black,
      fontSize: 12,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      height: 0.11,
    ),
    contentPadding: EdgeInsets.only(left: 12),
    floatingLabelBehavior: FloatingLabelBehavior.never, // Label selalu di atas
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        borderSide: BorderSide(
          color: Colors.white,
        )
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        borderSide: BorderSide(
          color: Colors.white,
        )
    ),
    filled: true,
    fillColor: Colors.white,
    // Border pada text field
  );

  final _form_box_shadow = ShapeDecoration(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    shadows: const [
      BoxShadow(
        color: Color(0x33B8B8FF),
        blurRadius: 2,
        offset: Offset(0, 2),
        spreadRadius: 0,
      )
    ],
  );

  AddStore({super.key});

  @override
  Widget build(BuildContext context) {

    // Mendapatkan lebar layar
    final double screenWidth = MediaQuery.of(context).size.width;
    // Menghitung padding sebagai 10% dari lebar layar
    final double paddingValue = screenWidth * 0.10;

    const _label_form_style = TextStyle(
      color: Color(0xFF7D7D7D), // Warna teks
      fontSize: 12, // Ukuran font
      fontFamily: 'Inter', // Jenis font
      fontWeight: FontWeight.w300, // Berat font
      height: 0.11, // Tinggi baris
    );

    List<String> listProvinsi = [
      "Select Province", "Sumatera Barat", "Riau", "Sumatera Utara", "Lampung", "Aceh", "Sumatera Selatan"];

    List<String> listCity = [
      "Select City","Padang", "Bukittinggi", "Padang Panjang", "Pariaman", "Sawahlunto", "Solok"];

    const _formTextStyle = TextStyle(
      color: Colors.black,
      fontSize: 12,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
    return Scaffold(
      backgroundColor: const Color(0xFFF8F7FF),
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
        shadowColor: const Color(0x14000000),
        toolbarHeight: 50,
      ),
      body: FormBuilder(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.only(left: paddingValue, top: 30.0, right: paddingValue),
          color: const Color(0xFFF8F7FF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: const Text(
                    'Store Name',
                    style: _label_form_style
                ),
              ),
              Container(
                height: 36,
                decoration: _form_box_shadow,
                child: FormBuilderTextField(
                  name: "Store Name",
                  onChanged: (val){

                  },
                  style: _formTextStyle,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  selectionHeightStyle: BoxHeightStyle.max,
                  decoration: _input_decor,
                ),
              ),

              Container(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: const Text(
                    'Store Name',
                    style: _label_form_style
                ),
              ),
              Container(
                height: 36,
                decoration: _form_box_shadow,
                child: FormBuilderDropdown<String>(
                  name: "Province",
                  initialValue: 'Select Province',
                  onChanged: (val){

                  },
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  style: _formTextStyle,
                  decoration: _input_decor,
                  items: listProvinsi
                      .map((gender) => DropdownMenuItem(
                    alignment: AlignmentDirectional.centerStart,
                    value: gender,
                    child: Text(gender),
                  ))
                      .toList(),
                ),
              ),

              Container(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: const Text(
                    'City',
                    style: _label_form_style
                ),
              ),
              Container(
                height: 36,
                decoration: _form_box_shadow,
                child: FormBuilderDropdown<String>(
                  name: "City",
                  initialValue: 'Select City',
                  onChanged: (val){

                  },
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  style: _formTextStyle,
                  decoration: _input_decor,
                  items: listCity
                      .map((gender) => DropdownMenuItem(
                    alignment: AlignmentDirectional.centerStart,
                    value: gender,
                    child: Text(gender),
                  ))
                      .toList(),
                ),
              ),

              Container(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: const Text(
                    'Address',
                    style: _label_form_style
                ),
              ),
              Container(
                height: 36,
                decoration: _form_box_shadow,
                child: FormBuilderTextField(
                  name: "Address",
                  onChanged: (val){

                  },
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  style: _formTextStyle,
                  selectionHeightStyle: BoxHeightStyle.max,
                  decoration: _input_decor,
                ),
              ),

              Container(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: const Text(
                    'Contact Number',
                    style: _label_form_style
                ),
              ),
              Container(
                height: 36,
                decoration: _form_box_shadow,
                child: FormBuilderTextField(
                  name: "Contact Number",
                  onChanged: (val){

                  },
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  style: _formTextStyle,
                  selectionHeightStyle: BoxHeightStyle.max,
                  decoration: _input_decor,
                ),
              ),

              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  child: MaterialButton(
                    color: const Color(0xFF6A48D9),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26),
                    ),
                    onPressed: () {
                      // Validate and save the form values
                      _formKey.currentState?.saveAndValidate();
                      debugPrint(_formKey.currentState?.value.toString());
                      // On another side, can access all field values without saving form with instantValues
                      _formKey.currentState?.validate();
                      debugPrint(_formKey.currentState?.instantValue.toString());
                      showDialog(
                        context: context,
                        barrierDismissible: false, // True jika ingin bisa ditutup dengan mengetuk luar dialog
                        builder: (BuildContext context) {
                          return AlertDialog(
                            contentPadding: EdgeInsets.only(bottom: 30 ,top: 20),
                            backgroundColor: Colors.white,
                            icon: SvgPicture.asset(
                              "assets/icons/complete.svg", // Path ke file SVG
                              width: 48,
                              height: 48,
                            ),
                            iconPadding: EdgeInsets.only(top: 30),
                            content: const Center(
                              heightFactor: 16,
                              child: Text(
                                'Verification Complete!',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0.06,
                                ),
                              ),
                            ),
                          );
                        },
                      );

                      Future.delayed(Duration(seconds: 2), () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pushNamed('/store');
                      });


                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
