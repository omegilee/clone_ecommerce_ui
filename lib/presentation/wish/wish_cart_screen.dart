import 'package:clone_ecommerce_ui/model/cart.dart';
import 'package:clone_ecommerce_ui/presentation/wish/check_out_cart.dart';
import 'package:clone_ecommerce_ui/presentation/wish/wish_cart_list.dart';
import 'package:flutter/material.dart';

class WishCartScreen extends StatelessWidget {
  const WishCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.black)),
        backgroundColor: Colors.transparent,
        title: Column(
          children: [
            const Text(
              "Your Cart",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "${demoCarts.length}",
              style: const TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
      body: WishCartList(),
      bottomNavigationBar: CheckoutCart(), //뚱땡
    );
  }
}
