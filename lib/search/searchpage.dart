import 'package:flutter/material.dart';
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
          Container(
            margin: const EdgeInsets.only(right: 8.0,),
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
                    padding:  MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 20.0)),
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
                    ]);
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
          SizedBox(height: 16),
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

    return GridView.builder(
  shrinkWrap: true,
  physics: NeverScrollableScrollPhysics(),
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, 
    crossAxisSpacing: 8.0, 
    mainAxisSpacing: 8.0, 
  ),
  itemCount: filteredItems.length,
  itemBuilder: (context, index) {
    final item = filteredItems[index];
    return Card(
      child: ListTile(
        title: Text(item.category),
        subtitle: Text(item.location),
        onTap: () {
          // Add logic here if needed
        },
      ),
    );
  },
);

  }
}



