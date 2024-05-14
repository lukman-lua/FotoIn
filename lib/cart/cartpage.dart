import 'package:flutter/material.dart';
import 'package:fotoin/cart/data_cart.dart';

class Cartpage extends StatefulWidget {
  @override
  _CartpageState createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  bool showCart = true;
  bool showHistory = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF93E3EAFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      showCart = true;
                      showHistory = false;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(110, 35),
                    foregroundColor: showCart ? Colors.white : Colors.black,
                    backgroundColor: showCart ? Color(0xFF9280FE) : Colors.white,
                  ),
                  child: Text('Cart'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      showHistory = true;
                      showCart = false;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(110, 35),
                    foregroundColor: showHistory ? Colors.white : Colors.black,
                    backgroundColor: showHistory ? Color(0xFF9280FE) : Colors.white,
                  ),
                  child: Text('History'),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: showCart ? CartList() : HistoryList(),
          ),
        ],
      ),
    );
  }
}

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 50,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: ListView.builder(
          itemCount: dummyData.length,
          itemBuilder: (context, index) {
            final item = dummyData[index];
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Colors.white,
                      height: 70.0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            margin: EdgeInsets.only(right: 10.0),
                            child: Image.asset(
                              item.image,
                              fit: BoxFit.cover,
                            ),
                          ),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.name,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 4.5),
                                Text(
                                  item.package,
                                  style: TextStyle(
                                    color: Color(0xFF9280FE),
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  "${item.date}, ${item.time}",
                                  style: TextStyle(
                                    color: Color(0xFFB8B8FF),
                                    fontSize: 9,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              item.price,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),

                          // Tombol Hapus
                          InkWell(
                            onTap: () {
                              // Tambahkan logika hapus nanti
                            },
                            child: Image.asset(
                              item.btnDel,
                              width: 22,
                              height: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class HistoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 20,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        "Adwin Photo",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.2,
                        ),
                      ),
                      subtitle: Text(
                        "Wedding Package D",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Row(
                        children: [
                          Text(
                            "5 Januari 2024,",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "13.00 - 17.00",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                            ),
                          ),
                          SizedBox(width: 125),
                          Text(
                            "Rp 1.250.000",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                Positioned(
                  top: 18,
                  right: 25,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 17, vertical: 4),
                    decoration: BoxDecoration(
                      color: Color(0xFFCFFDBF),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Text(
                      "Done",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Color(0x7FB8B8FF),
            height: 0.0,
            thickness: 0.60,
          ),

          SizedBox(height: 25),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        "Adwin Photo",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.2,
                        ),
                      ),
                      subtitle: Text(
                        "Wedding Package D",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Row(
                        children: [
                          Text(
                            "4 Januari 2024,",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "13.00 - 17.00",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                            ),
                          ),
                          SizedBox(width: 125),
                          Text(
                            "Rp 1.250.000",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                Positioned(
                  top: 18,
                  right: 25,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 17, vertical: 4),
                    decoration: BoxDecoration(
                      color: Color(0xFFFDBFBF),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Text(
                      "Canceled",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
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

void main() {
  runApp(MaterialApp(
    home: Cartpage(),
  ));
}
