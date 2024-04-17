import 'package:flutter/material.dart';

class Inboxpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 20,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 5.0, bottom: 5.0),
            color: Colors.white,
            child: ListTile(
              title: Text("Liyanadrian"),
              subtitle: Text("2 mins ago"),
              leading: Image.asset(
                'assets/image/avatar1.png',
                fit: BoxFit.fitHeight,
              ),
              tileColor: Colors.white,
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0.08,
              ),
              subtitleTextStyle: TextStyle(
                color: Color(0xFFB8B8FF),
                fontSize: 10,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0.16,
              ),
            ),
          ),
          Divider(
            color: Color(0x7FB8B8FF),
            height: 0.0,
            thickness: 0.60,
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 5.0, bottom: 5.0),
            color: Colors.white,
            child: ListTile(
              title: Text("Vionathefirst"),
              subtitle: Text("10 mins ago"),
              leading: Image.asset(
                'assets/image/avatar2.png',
                fit: BoxFit.fitHeight,
              ),
              tileColor: Colors.white,
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0.08,
              ),
              subtitleTextStyle: TextStyle(
                color: Color(0xFFB8B8FF),
                fontSize: 10,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0.16,
              ),
            ),
          ),
          Divider(
            color: Color(0x7FB8B8FF),
            height: 0.0,
            thickness: 0.60,
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 5.0, bottom: 5.0),
            color: Colors.white,
            child: ListTile(
              title: Text("Sofianotsofi"),
              subtitle: Text("Yesterday"),
              leading: Image.asset(
                'assets/image/avatar3.png',
                fit: BoxFit.fitHeight,
              ),
              tileColor: Colors.white,
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0.08,
              ),
              subtitleTextStyle: TextStyle(
                color: Color(0xFFB8B8FF),
                fontSize: 10,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0.16,
              ),
            ),
          ),
          Divider(
            color: Color(0x7FB8B8FF),
            height: 0.0,
            thickness: 0.60,
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 5.0, bottom: 5.0),
            color: Colors.white,
            child: ListTile(
              title: Text("Jamestothe"),
              subtitle: Text("3 days ago"),
              leading: Image.asset(
                'assets/image/avatar4.png',
                fit: BoxFit.fitHeight,
              ),
              tileColor: Colors.white,
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0.08,
              ),
              subtitleTextStyle: TextStyle(
                color: Color(0xFFB8B8FF),
                fontSize: 10,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0.16,
              ),
            ),
          ),
          Divider(
            color: Color(0x7FB8B8FF),
            height: 0.0,
            thickness: 0.60,
          ),
        ],
      ),
    );
  }
}
