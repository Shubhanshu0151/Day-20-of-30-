import 'package:day_20/models/catlog.dart';

class CartModel{
  
  CatalogModel _catalog;

  //collection of IDs
  final List<int> _itemIds = [];

  //get catalog
  CatalogModel get catalog => _catalog;

  //set catalog
  set catalog(CatalogModel newCatalog){
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //get item in the cart

  List<Item> get item => _itemIds.map((id)=> _catalog.getById(id)).toList();

  //get total price
  num get totalPrice => item.fold(0,(total, current)=> total + current.price);

  //add item 
  void add(Item item){
    _itemIds.add(item.id);
  }

  //remove item
  void remove(Item item){
    _itemIds.remove(item.id)
  }
}