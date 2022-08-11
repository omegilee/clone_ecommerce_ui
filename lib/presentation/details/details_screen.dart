import 'package:clone_ecommerce_ui/model/product.dart';
import 'package:clone_ecommerce_ui/presentation/components/appbar.dart';
import 'package:clone_ecommerce_ui/presentation/components/button.dart';
import 'package:clone_ecommerce_ui/presentation/details/color_dot.dart';
import 'package:clone_ecommerce_ui/presentation/details/product_description.dart';
import 'package:clone_ecommerce_ui/presentation/details/product_images.dart';
import 'package:clone_ecommerce_ui/presentation/details/top_rounded_container.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: args.product.rating),
      ),
      body: Column(
        children: [
          Expanded(child: _buildDetalsItems(args, context)),
          Container(
              constraints: const BoxConstraints(
                  minHeight: 100, minWidth: double.infinity),
              child: TopRoundedContainer(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    bottom: 40,
                    top: 15,
                  ),
                  child: defaultButton2(context, "Add To Cart", () {}),
                ),
              ))
        ],
      ),
    );
  }

  ListView _buildDetalsItems(
      ProductDetailsArguments args, BuildContext context) {
    return ListView(
      children: [
        ProductImage(product: args.product),
        TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDesctiption(
                  product: args.product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                    color: const Color(0xFFF6F7F9),
                    child: Column(
                      children: [ColorDot(product: args.product)],
                    )),
              ],
            ))
      ],
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments(this.product);
}
