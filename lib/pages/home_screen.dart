import 'package:flutter/material.dart';
import 'package:shopping_app_screen/widgets/hot_offers_grid_view.dart';
import 'package:shopping_app_screen/widgets/products_list_view.dart';
import 'package:shopping_app_screen/widgets/products_page_view.dart';
import 'package:shopping_app_screen/widgets/section_title.dart';

import '../data/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping Application",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      // To avoid application screen to overlap system components
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Our products section :
            const SectionTitle(sectionTitle: "Our Products"),
            Expanded(child: ProductsPageView(products: PRODUCTS,)),
            // Hot offers section :
            const SectionTitle(sectionTitle: 'Hot Offers'),
            Expanded(child: HotOffersGridView(products: PRODUCTS)),
            // Hot products section :
            const SectionTitle(sectionTitle: 'hot Products'),
            Expanded(child: ProductsListView(products: PRODUCTS)),
          ],
        ),
      ),
    );
  }
}
