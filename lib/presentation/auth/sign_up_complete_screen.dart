import 'dart:developer';

import 'package:clone_ecommerce_ui/presentation/components/button.dart';
import 'package:clone_ecommerce_ui/presentation/components/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpCompleteScreen extends StatefulWidget {
  SignUpCompleteScreen({Key? key}) : super(key: key);

  @override
  State<SignUpCompleteScreen> createState() => _SignUpCompleteScreenState();
}

class _SignUpCompleteScreenState extends State<SignUpCompleteScreen> {
  String? _email;
  String? _password;
  String? _retryPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign Up",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "Complete Profile",
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Complete your details or continue  \nwith social media",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(
              height: 20,
            ),
            defaultTextField(
              const EdgeInsets.all(10.0),
              (value) {
                log("message");
              },
              hint: "Enter your first name",
              icon: Icons.email,
              labelText: "First Name",
            ),
            defaultTextField(
              const EdgeInsets.all(10.0),
              (value) {
                log("message");
              },
              hint: "Enter your last name",
              icon: Icons.email,
              labelText: "Last Name",
            ),
            defaultTextField(
              const EdgeInsets.all(10.0),
              (value) {
                log("message");
              },
              hint: "Phone Number",
              icon: Icons.email,
              labelText: "Phone Number",
            ),
            defaultTextField(
              const EdgeInsets.all(10.0),
              (value) {
                log("message");
              },
              hint: "Enter your address",
              icon: Icons.email,
              labelText: "Address",
            ),
            const SizedBox(height: 30),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxWidth: 300, minWidth: 300, minHeight: 50),
              child: ContinueButton(
                onPress: () {},
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Center(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    const TextSpan(
                        text:
                            "By continuing your confirm that you agree \nwith our Term and Condition",
                        style: TextStyle(color: Colors.black))
                  ])),
            ),
            const Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
