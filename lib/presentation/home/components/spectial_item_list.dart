import 'package:flutter/material.dart';

class SpecialItemList extends StatelessWidget {
  final List<Map<String, Object>> items;

  const SpecialItemList({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [_title(), _makeListBuilder()],
      ),
    );
  }

  Row _title() {
    return Row(
      children: [
        const Text("Special fot you"),
        const Spacer(
          flex: 1,
        ),
        TextButton(onPressed: () {}, child: Text("See More"))
      ],
    );
  }

  Widget _makeListBuilder() {
    return Container(
      constraints: const BoxConstraints(
          minHeight: 100, minWidth: double.infinity, maxHeight: 140),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Container(
            margin: EdgeInsets.all(10),
            width: 242,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Stack(fit: StackFit.expand, children: [
                Image.asset(
                  item["image"].toString(),
                  fit: BoxFit.fill,
                ),
                Positioned(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(text: "${item["category"].toString()}\n"),
                    TextSpan(text: "${item["numOfBrands"]} Brands")
                  ])),
                  top: 10,
                  left: 10,
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}
