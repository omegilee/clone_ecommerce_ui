import 'package:clone_ecommerce_ui/model/product.dart';
import 'package:clone_ecommerce_ui/presentation/home/banner.dart';
import 'package:clone_ecommerce_ui/presentation/home/components/category_list.dart';
import 'package:clone_ecommerce_ui/presentation/home/components/product_cart.dart';
import 'package:clone_ecommerce_ui/presentation/home/components/search_bar.dart';
import 'package:clone_ecommerce_ui/presentation/home/components/spectial_item_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          const SearchBar(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: HomeBanner(header: "A summper Suprise", sub: "Cashback 20%"),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CategoryList(items: [
              {"icon": "assets/icons/Flash-Icon.svg", "text": "Flash Deal"},
              {"icon": "assets/icons/Bill-Icon.svg", "text": "Bill"},
              {"icon": "assets/icons/Game-Icon.svg", "text": "Game"},
              {"icon": "assets/icons/Gift-Icon.svg", "text": "Daily Gift"},
              {"icon": "assets/icons/Discover.svg", "text": "More"},
            ]),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SpecialItemList(items: [
              {
                "image": "assets/images/Image Banner 2.png",
                "category": "Smartphone",
                "numOfBrands": 18
              },
              {
                "image": "assets/images/Image Banner 3.png",
                "category": "Fashion",
                "numOfBrands": 24
              }
            ]),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: ProductListCart(items: demoProducts),
          )
        ],
      ),
    ));
  }
}
