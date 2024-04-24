import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fotoin/model/item_data.dart';
import 'package:fotoin/model/item_model.dart';
import 'package:fotoin/search/search_controller.dart';

class Searchpage extends StatefulWidget {
  @override
  _SearchpageState createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  late SearchControllerA _searchController;
  late String _selectedCategory;

  @override
  void initState() {
    super.initState();
    _searchController = SearchControllerA(); // Inisialisasi SearchController tanpa argumen
    _selectedCategory = '';
    _searchController.loadItems(dummyData); // Memuat data dummy ke SearchController
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8.0, top: 38.0,),
      child: ListView(
        children: [
         Row(
  children: [
    Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 8.0),
        child: SearchAnchor(
          isFullScreen: false,
          viewBackgroundColor: Colors.white,
          dividerColor: Colors.white,
          viewSurfaceTintColor: Colors.white,
          builder: (BuildContext context, SearchController controller) {
            return SearchBar(
              controller: controller,
              shadowColor: MaterialStateProperty.all(
                Color(0x33B8B8FF),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.white),
              surfaceTintColor: MaterialStateProperty.all(Colors.white),
              padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 20.0),
              ),
              hintText: "Search categories",
              hintStyle: MaterialStateProperty.all(
                const TextStyle(
                  color: Color(0x7FB8B8FF),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              onChanged: (_) {
                controller.openView();
              },
              onTap: () {
                controller.openView();
              },
              trailing: const [
                Icon(
                  Icons.search,
                  color: Color.fromRGBO(184, 184, 255, 1),
                ),
              ],
            );
          },
          suggestionsBuilder: (BuildContext context, SearchController controller) {
            return List<ListTile>.generate(5, (int index) {
              final String item = 'item $index';
              return ListTile(
                title: Text(item),
                onTap: () {
                  controller.closeView(item);
                },
              );
            });
          },
        ),
      ),
    ),
    IconButton(
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: Color.fromARGB(255, 237, 238, 248),
          context: context, builder: (context){

          return StatefulBuilder(builder: (BuildContext context, StateSetter setState){
            return  SingleChildScrollView(
               child: Padding(
                 padding: const EdgeInsets.only(left: 10.0, right: 10),
                 child: Column(
                   children: [
                    SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text('Filters', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),) ,
                    ),
                     Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Bandung',style: TextStyle(fontSize: 15, )),),
                          SizedBox(width: 10,),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Jakarta',style: TextStyle(fontSize: 15, )),),
                          SizedBox(width: 10,),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Bogor',style: TextStyle(fontSize: 15, )),),
                      ],
                    ),
                     Row(
                      children: [
                         ElevatedButton(
                          onPressed: () {},
                          child: Text('Riau',style: TextStyle(fontSize: 15, )),),
                          SizedBox(width: 10,),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Palembang',style: TextStyle(fontSize: 15, )),),
                          SizedBox(width: 10,),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Lampung',style: TextStyle(fontSize: 15, )),),
                          
                      ],
                    ),
                      SizedBox(height: 50,),
                   ],
                   
                 ),
               )  );
          });
        });
      },
      icon: const Icon(Icons.equalizer_outlined),
    )
  ],
),

          Container(
            width: 98,
            height: 28,
            margin: const EdgeInsets.only(top: 32.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ..._buildCategoryButtons(), 
              ],
            ),
          ),
          const SizedBox(height: 16),
          _buildFilteredCards(),
        ],
      ),
    );
  }

  List<Widget> _buildCategoryButtons() {

    List<Map<String, dynamic>> categories = [
      {"name": "Wedding", "color": Color(0xFFFF9900)},
      {"name": "Graduation", "color": Color(0xFFFF0099)},
      {"name": "Portrait", "color": Color(0xFF0065FF)},
      {"name": "Product", "color": Color(0xFF33FF00)},
    ];

    return categories.map((category) {
      return Container(
        margin: const EdgeInsets.only(right: 8.0, left: 8.0),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedCategory = category["name"];
            });
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: category["color"],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26),
              ),
              minimumSize: const Size(98, 28)),
          child: Text(
            category["name"],
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ),
      );
    }).toList();
  }

  Widget _buildFilteredCards() {
  // Menghasilkan daftar kartu berdasarkan kategori yang dipilih
  List<ItemModel> filteredItems = _searchController.items
      .where((item) => _selectedCategory.isEmpty || item.category == _selectedCategory)
      .toList();

  return ListView.builder(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemCount: filteredItems.length,
    itemBuilder: (context, index) {
      final item = filteredItems[index];
      return Stack(
        children: [
          Card(
            child: Image.asset(item.image),
          ),
          Positioned(
            top: 120,
            left: 30,

            child: Text(item.name, style: TextStyle(fontSize: 25, fontFamily: 'Inter', fontWeight: FontWeight.bold, color: Colors.white),)),

            Positioned(
              top: 160,
              left: 32,
              child: Text(item.location, style: TextStyle(fontSize: 20, fontFamily: 'Inter', fontWeight: FontWeight.bold, color: Colors.white),)),
        
        
            Positioned(
              top: 160,
              left: 260,
              child: Text(item.price + 'K', style: TextStyle(fontSize: 20, fontFamily: 'Inter', fontWeight: FontWeight.bold, color: Colors.white),))
        

        ],
      );
    },
  );
}

}





