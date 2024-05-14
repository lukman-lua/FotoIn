import 'package:flutter/material.dart';

class Customize extends StatefulWidget {

  @override
  State<Customize> createState() => _CustomizeState();
}

class _CustomizeState extends State<Customize> {
  int _pages = 0;

  List<Map<String, dynamic>> categories = [
    {
      "name": "Catalogue",
      "color": Color(0xFF9381FF),
      "text":  Colors.white,
      "id":  0
    },
    {
      "name": "Portofolio",
      "color": Colors.white,
      "text":  Colors.black,
      "id":  1
    },
    {
      "name": "Settings",
      "color": Colors.white,
      "text":  Colors.black,
      "id":  2
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F7FF),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Customize Store',
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
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 32.0, top: 32.0, bottom: 33.0),
            child: ListTile(
              title: Text("ALICE Photo"),
              leading: Image.asset(
                'assets/image/avatar1.png',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          Container(
            width: 98,
            height: 28,
            margin: const EdgeInsets.only(top: 12.0, left: 32.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ..._buildCategoryButtons(),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 20, left: 32),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Wedding Package ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 32),
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
                      ),
                    )
                  ],
                ),

                Container(
                  height: 99,
                  margin: const EdgeInsets.only(top:8.0, bottom: 8.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 171,
                        height: 99,
                        margin: const EdgeInsets.only(right: 8.0),
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/wd1.jpg"),
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
                            image: AssetImage("assets/wd2.jpg"),
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
                            image: AssetImage("assets/wd3.jpg"),
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


                Row(
                  children: [
                    Text(
                      'Graduation Package ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 32),
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
                      ),
                    )
                  ],
                ),

                Container(
                  height: 99,
                  margin: const EdgeInsets.only(top:8.0, bottom: 8.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 171,
                        height: 99,
                        margin: const EdgeInsets.only(right: 8.0),
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/gp1.jpg"),
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
                            image: AssetImage("assets/gp2.jpg"),
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
                            image: AssetImage("assets/gp3.jpg"),
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

                Row(
                  children: [
                    Text(
                      'Product Package ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 32),
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
                      ),
                    )
                  ],
                ),

                Container(
                  height: 99,
                  margin: const EdgeInsets.only(top:8.0, bottom: 8.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 171,
                        height: 99,
                        margin: const EdgeInsets.only(right: 8.0),
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/pp1.jpg"),
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
                            image: AssetImage("assets/pp2.jpg"),
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
                            image: AssetImage("assets/pp3.jpg"),
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

              ],
            ),
          )


        ],
      ),
    );
  }

  List<Widget> _buildCategoryButtons() {
    return categories.map((cats) {
      var color = Colors.white;
      var text = Colors.black;
      if (cats["id"] == _pages) {
        color = Color(0xFF9381FF);
        text = Colors.white;
      }
      return GestureDetector(
        onTap: () {
        },
        child: Container(
          margin: const EdgeInsets.only(right: 8.0, bottom: 2.0),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _pages = cats['id'];
              });
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26),
                ),
                minimumSize: const Size(98, 28)),
            child: Text(
              cats["name"],
              style: TextStyle(
                color: text,
                fontSize: 12,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
        ),
      );
    }).toList();
  }
}
