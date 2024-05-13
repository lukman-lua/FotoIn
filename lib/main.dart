import 'package:flutter/material.dart';
import 'package:fotoin/catalogue/catalogue_page.dart';
import 'package:fotoin/home.dart';
import 'package:fotoin/profile/add_store.dart';
import 'package:fotoin/profile/profile.dart';
import 'package:fotoin/profile/store_home_page.dart';

void main() {
  runApp(Route());
}

class Route extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home (),
        initialRoute: '',
        routes: {
          '/inbox': (context) => Profile(),
          '/search': (context) => Profile(),
          '/cart': (context) => Profile(),
          Profile.route: (context) => Profile(),
          '/add_store' : (context) => AddStore(),
          '/store': (context) => StoreHomePage(),
          '/catalouge': (context) => CataloguePage(),
        }
    );
  }
}
