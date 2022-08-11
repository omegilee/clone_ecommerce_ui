import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

class CategoryList extends StatelessWidget {
  final List<Map<String, Object>> items;

  const CategoryList({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
          minHeight: 100, minWidth: double.infinity, maxHeight: 100),
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final item = items[index];
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.pink[50],
                    borderRadius: BorderRadius.all(const Radius.circular(10))),
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.all(10),
                width: 60,
                height: 60,
                child: SvgPicture.asset(item["icon"].toString()),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(item["text"].toString())
            ],
          );
        },
      ),
    );
  }
}
