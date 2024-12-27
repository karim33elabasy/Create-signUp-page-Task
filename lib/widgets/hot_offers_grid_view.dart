import 'package:flutter/material.dart';
import 'package:shopping_app_screen/widgets/product_widget.dart';
import '../models/product_model.dart';

class HotOffersGridView extends StatelessWidget {
  final List<ProductModel> products;
  const HotOffersGridView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.4,
        crossAxisSpacing: 10
      ),
      itemBuilder: (context,counter)=> ProductWidget(productModel: products[counter]),
      itemCount: 2,
    );
  }
}
