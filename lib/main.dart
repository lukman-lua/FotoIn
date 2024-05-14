import 'package:flutter/material.dart';
import 'package:fotoin/catalogue/catalogue_page.dart';
import 'package:fotoin/home.dart';
import 'package:fotoin/profile/add_store.dart';
import 'package:fotoin/profile/customize.dart';
import 'package:fotoin/profile/profile.dart';
import 'package:fotoin/profile/store_home_page.dart';
import 'globals.dart' as globals;

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
          '/customize': (context) => Customize(),
        }
    );
  }
}

// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   final BoxDecoration customBackgroundDecoration = BoxDecoration(
//     gradient: LinearGradient(
//       begin: Alignment(0.32, -0.95),
//       end: Alignment(-0.32, 0.95),
//       colors: [
//         Color(0xFFFFD8BE),
//         Color(0xFFFFEEDD),
//         Colors.white,
//         Color(0xFFE0E0FF),
//         Color(0xFFB8B8FF)
//       ],
//     ),
//   );
//
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: Container(
//         decoration: customBackgroundDecoration,
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => login()),
//                   );
//                 },
//                 child: Container(
//                   height: 178,
//                   width: 162,
//                   decoration: BoxDecoration(
//                     color: Colors.transparent,
//                   ),
//                   child: Image.asset(
//                     "assets/logo.jpg",
//                     width: 120.0,
//                     height: 120.0,
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }