import 'package:flutter/material.dart';

class Searchpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left:32.0, top: 38.0),
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 64.0),
            child: SearchAnchor(
                viewBackgroundColor: Colors.white,
                dividerColor: Colors.white,
                viewSurfaceTintColor: Colors.white,
                builder: (BuildContext context, SearchController controller) {
                  return SearchBar(
                    controller: controller,
                    shadowColor: MaterialStateProperty.all(
                        Color(0x33B8B8FF)
                    ),
                    backgroundColor: MaterialStateProperty.all(
                        Colors.white
                    ),
                    surfaceTintColor: MaterialStateProperty.all(
                        Colors.white
                    ),
                    padding: const MaterialStatePropertyAll<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 20.0)
                    ),
                    hintText: "Search categories",
                    hintStyle: MaterialStateProperty.all(
                        const TextStyle(
                          color: Color(0x7FB8B8FF),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        )
                    ),
                    onChanged: (_){
                      controller.openView();
                    },
                    onTap: (){
                      controller.openView();
                    },
                    trailing: const [
                      Icon(
                        Icons.search,
                        color: Color.fromRGBO(184, 184, 255, 1),
                      ),
                    ]
                  );
                },
                suggestionsBuilder: (BuildContext context, SearchController controller){
                  return List<ListTile>.generate(5, (int index) {
                    final String item = 'item $index';
                    return ListTile(
                      title: Text(item),
                      onTap: (){
                        controller.closeView(item);
                      },
                    );
                  });
                }
            ),
          ),
          Container(
            width: 98,
            height: 28,
            margin: const EdgeInsets.only(top:32.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.only(right:8.0),
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFF9900),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26),
                        ),
                        minimumSize: const Size(98, 28)
                    ),
                    child: const Text(
                      "Wedding",
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
                Container(
                  margin: const EdgeInsets.only(right:8.0),
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFF0099),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26),
                        ),
                        minimumSize: const Size(98, 28)
                    ),
                    child: const Text(
                      "Graduation",
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
                Container(
                  margin: const EdgeInsets.only(right:8.0),
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0065FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26),
                        ),
                        minimumSize: const Size(98, 28)
                    ),
                    child: const Text(
                      "Potrait",
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
                Container(
                  margin: const EdgeInsets.only(right:8.0),
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF33FF00),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26),
                        ),
                        minimumSize: const Size(98, 28)
                    ),
                    child: const Text(
                      "Product",
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
