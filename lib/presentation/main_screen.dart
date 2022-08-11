import 'dart:developer';

import 'package:clone_ecommerce_ui/presentation/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final bottomBar = List.of([
    {
      "label": "home",
      "icon": "assets/icons/Shop Icon.svg",
      "screen": const HomeScreen(),
      "path": "/home"
    },
    {
      "label": "wish",
      "icon": "assets/icons/Heart Icon.svg",
      "screen": null,
      "path": null
    },
    {
      "label": "chat",
      "icon": "assets/icons/Chat bubble Icon.svg",
      "screen": null,
      "path": null
    },
    {
      "label": "profile",
      "icon": "assets/icons/User Icon.svg",
      "screen": null,
      "path": null
    },
  ]);

  String _selectLabel = "home";

  Widget _buildBottomNavBar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Color(0xffdadada).withOpacity(0.15)),
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...bottomBar
                .map((e) => IconButton(
                    onPressed: () {
                      final String label = e["label"].toString();
                      final route =
                          e["path"] != null ? e["path"].toString() : "";
                      log("label > $label, path : ${route}");
                      // if (route.isNotEmpty) {
                      //   Navigator.pushNamed(context, route);
                      // }
                      setState(() {
                        _selectLabel = label;
                      });
                    },
                    icon: SvgPicture.asset(
                      e["icon"].toString(),
                      color: _selectLabel == e["label"].toString()
                          ? Colors.red[600]
                          : Colors.amber[600],
                    )))
                .toList()
          ],
        ),
      ),
    );
  }

  Widget findScreen() {
    for (var element in bottomBar) {
      final label = element["label"];
      final screen = element["screen"];
      if (label == _selectLabel && screen != null && screen is Widget) {
        return screen;
      }
    }
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Text("no screen"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: findScreen(),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }
}
