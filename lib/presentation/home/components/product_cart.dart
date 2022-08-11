import 'package:clone_ecommerce_ui/model/product.dart';
import 'package:clone_ecommerce_ui/presentation/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductListCart extends StatelessWidget {
  final List<Product> items;

  const ProductListCart({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
          minWidth: double.infinity, minHeight: 100, maxHeight: 240),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return _buildItem(context, items[index]);
        },
      ),
    );
  }

  Widget _buildItem(BuildContext context, Product item) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "/details",
              arguments: ProductDetailsArguments(item));
        },
        child: SizedBox(
          width: 140,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[800]?.withOpacity(0.1),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                  child: Hero(
                    tag: item.id.toString(),
                    child: Image.asset(item.images[0]),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                item.title,
                style: const TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${item.price}"),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          color: Colors.amber[100],
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/Heart Icon_2.svg",
                          color: const Color(0xFFFF4848),
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
