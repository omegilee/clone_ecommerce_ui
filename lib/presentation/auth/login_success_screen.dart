import 'dart:developer';

import 'package:clone_ecommerce_ui/presentation/components/button.dart';
import 'package:flutter/material.dart';

class LoginSuccessScreen extends StatefulWidget {
  LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  State<LoginSuccessScreen> createState() => _LoginSuccessScreenState();
}

class _LoginSuccessScreenState extends State<LoginSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Success",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Spacer(
              flex: 1,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Image.asset("assets/images/success.png"),
              flex: 3,
            ),
            Spacer(
              flex: 1,
            ),
            Expanded(child: Text("Login Success")),
            defaultButton(
              context,
              "Back to home",
              () {
                log("back to home");
                Navigator.pushNamed(context, "/home");
              },
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
