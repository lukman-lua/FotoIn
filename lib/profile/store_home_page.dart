import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StoreHomePage extends StatefulWidget {

  @override
  State<StoreHomePage> createState() => _StoreHomePageState();
}

class _StoreHomePageState extends State<StoreHomePage> {

  int _pages = 0;
  List<Map<String, dynamic>> categories = [
    {
      "name": "Orders",
      "color": Color(0xFF9381FF),
      "text":  Colors.white,
      "id":  0
    },
    {
      "name": "Accepted",
      "color": Colors.white,
      "text":  Colors.black,
      "id":  1
    },
    {
      "name": "Canceled",
      "color": Colors.white,
      "text":  Colors.black,
      "id":  2
    },
    {
      "name": "Done",
      "color": Colors.white,
      "text":  Colors.black,
      "id":  3
    },
  ];

  @override
  Widget build(BuildContext context) {

    bool isButtonPressed = false;

    void _onButtonTapDown(TapDownDetails details) {
      setState(() {
        isButtonPressed = false;
      });
    }

    void _onButtonTapUp(TapUpDetails details) {
      setState(() {
        isButtonPressed = true;
      });
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF8F7FF),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Store Dashboard',
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
            color: Colors.white,
            child: ListTile(
              title: Text("ALICE Photo"),
              leading: Image.asset(
                'assets/image/avatar1.png',
                fit: BoxFit.fitHeight,
              ),
              trailing: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/customize');
                },
                onTapDown: _onButtonTapDown,
                onTapUp: _onButtonTapUp,
                child: Container(
                  width: 98,
                  height: 28,
                  padding: EdgeInsets.only(top: 7),
                  decoration: BoxDecoration(
                    color: isButtonPressed
                        ? Color(0xFF7260CC) // Warna lebih gelap saat ditekan
                        : Color(0xFF9381FF),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33B8B8FF),
                        blurRadius: 2,
                        offset: Offset(0, -1),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Text(
                    'Customize',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
          ),

          Container(
              height: 124,
              padding: EdgeInsets.only(top: 20.0),
              decoration: BoxDecoration(color: Color(0xFF9381FF)),
              child: Column(
                crossAxisAlignment : CrossAxisAlignment.start,
              children: [
                Container(
                  height: 16,
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Order Status',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0.05,
                    ),
                  ),
                ),

                Row(
                  crossAxisAlignment : CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 47,
                          height: 47,
                          padding: EdgeInsets.only(top: 23.0),
                          margin: EdgeInsets.only(bottom: 14.0),
                          child: Text(
                            '1',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF6A48D9),
                              fontSize: 18,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0.05,
                            ),
                          ),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)
                            ),
                          ),
                        ),
                        Text(
                          'Orders',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0.11,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 47,
                          height: 47,
                          padding: EdgeInsets.only(top: 23.0),
                          margin: EdgeInsets.only(bottom: 14.0,),
                          child: Text(
                            '10',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF6A48D9),
                              fontSize: 18,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0.05,
                            ),
                          ),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Accepted',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.11,
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 47,
                          height: 47,
                          padding: EdgeInsets.only(top: 23.0),
                          margin: EdgeInsets.only(bottom: 14.0,),
                          child: Text(
                            '3',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF6A48D9),
                              fontSize: 18,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0.05,
                            ),
                          ),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Canceled',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.11,
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 47,
                          height: 47,
                          padding: EdgeInsets.only(top: 23.0),
                          margin: EdgeInsets.only(bottom: 14.0,),
                          child: Text(
                            '64',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF6A48D9),
                              fontSize: 18,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0.05,
                            ),
                          ),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Done',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.11,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            )
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

          _getPage(_pages),

        ],
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return _odersPage();
      case 1:
        return _acceptedPage();
      case 2:
        return _canceledPage();
      case 3:
        return _donePage();
      default:
        return _odersPage();
    }
  }

  Widget _odersPage() {
    return Container(
      decoration: BoxDecoration(color: Color(0xFFF8F7FF)),
      margin: EdgeInsets.only(left: 30, right: 30, top: 20),
      child: Column(
        children: [
          Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              color: Colors.white
            ),
            child: Row(
              crossAxisAlignment : CrossAxisAlignment.start,
              children: [
                Image.asset("assets/orderspf.png"),
                Container(
                  width: 17,
                  height: 19,
                  margin: EdgeInsets.only(top: 10, left: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/avatar1.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment : CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 19, left: 10),
                      child: Text(
                        'Liyanadrian',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF9381FF),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0.08,
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 30, left: 10),
                      child: Text(
                        'Wedding Package D',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.08,
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 13, left: 10),
                      child: Text(
                        '5 Januari 2024',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 13, left: 10),
                      child: Text(
                        '13.00-17.00',
                        style: TextStyle(
                          color: Color(0xFF9381FF),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
                        ),
                      ),
                    ),

                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, top: 10),
                  child: Row(
                    mainAxisAlignment : MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 40,
                        height: 15,
                        padding: EdgeInsets.only(top: 5),
                        decoration: ShapeDecoration(
                          color: Color(0xFFFFBFBF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26),
                          ),
                        ),
                        child: Text(
                          'Decline',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 7,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 15 ,
                        padding: EdgeInsets.only(top: 5),
                        decoration: ShapeDecoration(
                          color: Color(0xFFD0FFBF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26),
                          ),
                        ),
                        child: Text(
                          'Accept',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 7,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
  Widget _acceptedPage() {
    return Container(

    );
  }

  Widget _canceledPage() {
    return Container(

    );
  }

  Widget _donePage() {
    return Container(

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
