import 'package:flutter/cupertino.dart';
import 'package:shopping_app_screen/models/product_model.dart';
import 'package:shopping_app_screen/widgets/product_widget.dart';

class ProductsListView extends StatelessWidget {
  final List<ProductModel> products;
  const ProductsListView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(
        horizontal: 10
      ),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,counter)=> ProductWidget(productModel: products[counter]),
      separatorBuilder: (context,counter)=> const SizedBox(width: 10),
      itemCount: 5,
    );
  }
}
