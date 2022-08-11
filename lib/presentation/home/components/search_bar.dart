import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const Flexible(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search product",
                      prefixIcon: Icon(Icons.search),
                      focusColor: searchBackground,
                      prefixIconColor: Colors.grey,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: searchBackground),
                )),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/cart");
              },
              child: Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: searchBackground),
                  child: SvgPicture.asset("assets/icons/Cart-icon.svg")),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[200]),
                  child: SvgPicture.asset("assets/icons/Bell.svg")),
            ),
          ],
        ),
      ),
    );
  }
}
