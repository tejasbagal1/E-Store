import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail-screen';

  @override
  Widget build(BuildContext context) {
    String productId = ModalRoute.of(context)!.settings.arguments as String;
    // note the |listen: false| argument to "of" method.
    // this will not rebuild the widget even if the products
    // change as the of<Products> will triger the rebuild on change in Products
    final productData = Provider.of<Products>(context, listen: false);
    
    final thisProduct = productData.findProductById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(thisProduct.title),
      ),
    );
  }
}
