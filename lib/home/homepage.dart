import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 32.0),
      child: ListView(
        children: [
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Welcome to ',
                  style: TextStyle(
                    color: Color(0xFF9381FF),
                    fontSize: 32,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: '\nFotoIn',
                  style: TextStyle(
                    color: Color(0xFF9381FF),
                    fontSize: 32,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: '!',
                  style: TextStyle(
                    color: Color(0xFF9381FF),
                    fontSize: 32,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top:32.0,right: 32.0),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      'You may need this',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    Expanded(child: Text(
                      'See all',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF9381FF),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),)
                  ],
                ),
                Container(
                  width: 350,
                  height: 154,
                  margin: EdgeInsets.only(top:8.0),
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/image/ads1.jpeg'),
                      fit: BoxFit.fitWidth,
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x33B8B8FF),
                        blurRadius: 2,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 350,
                  height: 154,
                  margin: EdgeInsets.only(top:32.0),
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/image/ads2.png'),
                      fit: BoxFit.fitWidth,
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x33B8B8FF),
                        blurRadius: 2,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top:32.0,right: 32.0),
            child: const Column(
              children: [
                Row(
                  children: [
                    Text(
                      'By your search history',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    Expanded(
                      child: Text(
                      'See all',
                      textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF9381FF),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
                // Image.asset(''),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top:8.0, bottom: 8.0),
            width: 171,
            height: 99,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 171,
                  height: 99,
                  margin: const EdgeInsets.only(right: 8.0),
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/image/hist1.jpeg"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x33B8B8FF),
                        blurRadius: 2,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 171,
                  height: 99,
                  margin: const EdgeInsets.only(right: 8.0),
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/image/hist2.jpeg"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x33B8B8FF),
                        blurRadius: 2,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 171,
                  height: 99,
                  margin: const EdgeInsets.only(right: 8.0),
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/image/hist3.jpeg"),
                      fit: BoxFit.fitWidth,
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x33B8B8FF),
                        blurRadius: 2,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
