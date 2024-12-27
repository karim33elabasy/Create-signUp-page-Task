import 'package:flutter/material.dart';
import 'package:shopping_app_screen/widgets/product_widget.dart';

import '../models/product_model.dart';

class ProductsPageView extends StatelessWidget {
  final List<ProductModel> products;
  const ProductsPageView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return PageView(
      padEnds: true,
      // Generating the childern of the page videw depending on the list recieved as argument
      children: products.map((productModel) {
        //Creating the yellow frame and inside it the page view images :
        return Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.yellow,width: 3),
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(productModel.productImage),
              // To make the photo fill the screen as cover
              fit: BoxFit.cover
            )
          ),
        );
      }).toList(),
    );
  }
}
