import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  static const route = '/profile';
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.only(left: 33.0, top: 33.0, bottom: 33.0),
          color: Colors.white,
          child: ListTile(
            title: Text("Adwin Photo"),
            leading: Image.asset(
              'assets/image/avatar1.png',
              fit: BoxFit.fitHeight,
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
          child: const Text(
            "Settings",
            style: TextStyle(
              color: Color(0xFF6A48D9),
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),

        TextButton(
          style:  TextButton.styleFrom(
            padding: EdgeInsets.only(left: 10.0),// Padding
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero, // Tepi tajam
            ),
          ),
          child: const ListTile(
            title: Text(
              "Notifications"
            ),
            leading: Icon(Icons.add_alert_outlined),
          ),
          onPressed: (){

          },
        ),
        TextButton(
          style:  TextButton.styleFrom(
            padding: EdgeInsets.only(left: 10.0),// Padding
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero, // Tepi tajam
            ),
          ),
          child: const ListTile(
            title: Text(
                "About App"
            ),
            leading: Icon(Icons.add_alert_outlined),
          ),
          onPressed: (){

          },
        ),
        TextButton(
          style:  TextButton.styleFrom(
            padding: EdgeInsets.only(left: 10.0),// Padding
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero, // Tepi tajam
            ),
          ),
          child: const ListTile(
            title: Text(
                "Ask Us"
            ),
            leading: Icon(Icons.add_alert_outlined),
          ),
          onPressed: (){

          },
        ),
        TextButton(
          style:  TextButton.styleFrom(
            padding: EdgeInsets.only(left: 10.0),// Padding
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero, // Tepi tajam
            ),
          ),
          child: const ListTile(
            title: Text(
                "Report a Problem"
            ),
            leading: Icon(Icons.add_alert_outlined),
          ),
          onPressed: (){

          },
        ),

        Container(
          padding: EdgeInsets.only(left: 16.0, bottom: 16.0, top: 16.0),
          child: const Text(
            "Account",
            style: TextStyle(
              color: Color(0xFF6A48D9),
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),

        TextButton(
          style:  TextButton.styleFrom(
            padding: EdgeInsets.only(left: 10.0),// Padding
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero, // Tepi tajam
            ),
          ),
          child: const ListTile(
            title: Text(
                "Add Company Account"
            ),
            leading: Icon(Icons.add_a_photo),
          ),
          onPressed: (){
            Navigator.of(context).pushNamed('/add_store');
          },
        ),
        TextButton(
          style:  TextButton.styleFrom(
            padding: EdgeInsets.only(left: 10.0),// Padding
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero, // Tepi tajam
            ),
          ),
          child: const ListTile(
            title: Text(
                "Logout"
            ),
            leading: Icon(Icons.logout),
          ),
          onPressed: (){

          },
        ),
      ],
    );
  }
}
