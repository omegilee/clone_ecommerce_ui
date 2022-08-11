import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  final Function() onPress;
  const ContinueButton({
    Key? key,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPress.call();
      },
      style: TextButton.styleFrom(
          backgroundColor: Colors.amber[600],
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
      child: Text(
        "continute",
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: Theme.of(context).textTheme.button?.apply(color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}

Widget defaultButton(BuildContext context, String name, Function() onPressed) {
  return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          backgroundColor: Colors.amber[600],
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
      child: Text(
        name,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: Theme.of(context).textTheme.button?.apply(color: Colors.white),
        textAlign: TextAlign.center,
      ));
}

Widget defaultButton2(BuildContext context, String name, Function() onPress) {
  return TextButton(
      onPressed: onPress,
      style: TextButton.styleFrom(
          backgroundColor: Colors.amber[900],
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          name,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: Theme.of(context).textTheme.button?.apply(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ));
}
