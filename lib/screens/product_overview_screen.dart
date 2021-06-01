import 'package:flutter/material.dart';

import '../complex_widgets/products_grid.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.secondary,
        title: const Text("ProductsOverwiewScreen"),
      ),
      body: ProductsGrid(),
    );
  }
}
