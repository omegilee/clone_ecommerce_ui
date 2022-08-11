import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key, required this.header, required this.sub})
      : super(key: key);

  final String header;

  final String sub;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(22)),
          color: Color(0xFF4A3298)),
      child: AspectRatio(
        aspectRatio: 241 / 68,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: "$header\n",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.apply(color: Colors.white)),
            TextSpan(
                text: sub,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.apply(color: Colors.white))
          ])),
        ),
      ),
    );
  }
}
