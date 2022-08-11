import 'package:clone_ecommerce_ui/model/cart.dart';
import 'package:clone_ecommerce_ui/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WishCartList extends StatelessWidget {
  const WishCartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Dismissible(
                key: Key(demoCarts[index].product.id.toString()),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  if (demoCarts.isNotEmpty) {
                    try {} catch (e) {}
                  }
                },
                background: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFE6E6),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      const Spacer(),
                      SvgPicture.asset("assets/icons/Trash.svg"),
                    ],
                  ),
                ),
                child: CartCard(cart: demoCarts[index])),
          );
        },
      ),
    );
  }
}

class CartCard extends StatelessWidget {
  final Cart cart;

  Product _getProduct() => cart.product;

  const CartCard({Key? key, required this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[100],
              shape: BoxShape.rectangle),
          child: Image.asset(_getProduct().images[0]),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _getProduct().title,
                maxLines: 2,
                style: Theme.of(context).textTheme.bodyText1?.apply(
                    color: Colors.black, overflow: TextOverflow.ellipsis),
              ),
              const SizedBox(
                height: 4,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "\$${_getProduct().price}",
                    style: const TextStyle(
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: " ${cart.numOfItem}",
                    style: const TextStyle(color: Colors.grey))
              ]))
            ],
          ),
        )
      ],
    );
  }
}
