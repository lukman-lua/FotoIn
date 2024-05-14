import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../globals.dart' as globals;

class Profile extends StatefulWidget {
  static const route = '/profile';

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    String status = "Login/ Sign up";
    if (globals.isLoggedIn){
      status = "My Store";
    }
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.only(left: 33.0, top: 33.0, bottom: 33.0),
          color: Colors.white,
          child: ListTile(
            title: Text(globals.username),
            leading: Image.asset(
              'assets/image/avatar1.png',
              fit: BoxFit.fitHeight,
            ),
          ),
        ),

        _loginOrStore(status, context),

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

        _profileMenu("Notifications", "assets/icons/notif.svg"),
        _profileMenu("About App", "assets/icons/about.svg"),
        _profileMenu("Ask us", "assets/icons/ask.svg"),
        _profileMenu("Report a Problem", "assets/icons/report.svg"),


        _accountTag(globals.isLoggedIn),

        _account("Profile", "assets/icons/profile.svg", globals.isLoggedIn),
        _account("Logout", "assets/icons/logout.svg", globals.isLoggedIn, onp: logout),
      ],
    );
  }

   Widget _accountTag(bool login) {
    if (login) {
      return Container(
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
      );
    }
    return Container();
  }

  Widget _account(String text, String icon, bool login, {VoidCallback? onp}) {
    if (login) {
      return _profileMenu(text, icon, onp: onp ?? nothing());
    }
    return Container();
  }

  logout(){
    globals.isLoggedIn = false;
    globals.username = "Guest";
    setState(() {});
  }
  nothing(){

  }

  Widget _profileMenu(String text, String icon, {VoidCallback? onp}) {
    return TextButton(
      style:  TextButton.styleFrom(
        padding: EdgeInsets.only(left: 10.0),// Padding
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, // Tepi tajam
        ),
      ),
      child: ListTile(
        title: Text(
            text
        ),
        leading: SvgPicture.asset(
          icon, // Path ke file SVG
        ),
      ),
      onPressed: onp ?? nothing(),
    );
  }

  Widget _loginOrStore(String status, BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(globals.isLoggedIn){
          Navigator.of(context).pushNamed('/store');
        } else {
          globals.isLoggedIn = true;
          globals.username = "Dev ALICE";
          setState(() {});
        }
      },
      child: Container(
        padding: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
        decoration: BoxDecoration(color: Color(0xFF9381FF)),
        child: Text(
          status,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0.0,
          ),
        ),
      ),
    );
  }
}


