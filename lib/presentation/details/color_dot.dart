import 'package:clone_ecommerce_ui/model/product.dart';
import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  final Product product;
  const ColorDot({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ...List.generate(
              product.colors.length,
              (index) => ColorDotItem(
                    color: product.colors[index],
                    isSelected: index == 0,
                  )),
          Spacer(),
          RoundedIconBtn(
            icon: Icons.remove,
            press: () {},
          ),
          SizedBox(
            width: 30,
          ),
          RoundedIconBtn(
            icon: Icons.add,
            press: () {},
          )
        ],
      ),
    );
  }
}

class RoundedIconBtn extends StatelessWidget {
  final IconData icon;
  final Function() press;

  const RoundedIconBtn({Key? key, required this.icon, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press();
      },
      child: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
        child: Icon(icon),
      ),
    );
  }
}

class ColorDotItem extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDotItem({Key? key, required this.color, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border:
              Border.all(color: isSelected ? Colors.red : Colors.transparent),
          shape: BoxShape.circle),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
