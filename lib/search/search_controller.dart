import 'package:fotoin/model/item_model.dart';

class SearchControllerA {
  late List<ItemModel> items;

  // Constructor
  SearchController() {
    items = []; // Inisialisasi list items
  }

  // Metode untuk memuat data
  void loadItems(List<ItemModel> initialItems) {
    items = initialItems; // Memuat data dari argumen ke dalam list items
  }

  // Metode untuk melakukan filter berdasarkan kategori
  List<ItemModel> filterItemsByCategory(String category) {
    return items.where((item) => item.category == category).toList();
  }
}
