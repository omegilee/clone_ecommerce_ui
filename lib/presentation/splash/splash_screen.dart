import 'package:clone_ecommerce_ui/model/splash.dart';
import 'package:clone_ecommerce_ui/presentation/components/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_view_indicators/page_view_indicators.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final items = SplashPageItem.defaultIitems();

  final _currentPageNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: Colors.white,
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Text(
                  "TOKOTO",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .apply(color: Colors.amber[800]),
                )),
          ),
          Flexible(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: PageView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final current = items[index];
                    return pageItem(
                        context, current.subTitle, current.assetPath);
                  },
                  onPageChanged: (value) {
                    setState(() {
                      _currentPageNotifier.value = value;
                    });
                  },
                ),
              )),
          Flexible(
              flex: 1,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: _buildPageIndicator(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ConstrainedBox(
                    constraints:
                        const BoxConstraints(maxWidth: 300, minWidth: 300),
                    child: ContinueButton(
                      onPress: () {
                        Navigator.pushNamed(context, "/signin");
                      },
                    ),
                  )
                ],
              ))
        ],
      ),
    ));
  }

  Widget _buildPageIndicator() {
    return CirclePageIndicator(
        currentPageNotifier: _currentPageNotifier, itemCount: items.length);
  }

  Widget pageItem(BuildContext context, String des, String assetPath) {
    return Column(
      children: [
        Text(des, style: Theme.of(context).textTheme.subtitle1),
        const SizedBox(
          height: 30,
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            width: double.infinity,
            child: Image.asset(assetPath),
          ),
        )
      ],
    );
  }
}
