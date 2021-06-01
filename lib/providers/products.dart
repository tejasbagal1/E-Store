import 'package:flutter/foundation.dart';
import 'package:shop_app/models/product.dart';

// a very important read:
//we defined the items as private.why?

//   1) because the objects and widgets in the flutter are reference
//      reference types ie.
//                        we return the pointer to the actual object
//                        and there is the problem, as anyone outside
//                        the class can change the data.
//  2) Very important thing to understand here:
//    
//   * if the _items is changed without this class, ie. through other way
//     the data will be changed but this notifyListeners() would not be
//     called thus creating the change in data but not getting reflected
//     in other widgets that depend on it!
//     therefore, we make it private and should be changed only through 
//    this gateway
//  
class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
  ];

  List<Product> get getItems {
    return [..._items];
  }


  Product findProductById(String id){
    //note that .where returns iterable to that product
    // whereas  .firstWhere return the matched product itself.
    return _items.firstWhere((product) => product.id == id);
  }

  void addProduct() {
    // _items.add(value); 
    notifyListeners();
  }
}
