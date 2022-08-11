import 'dart:developer';

import 'package:clone_ecommerce_ui/presentation/components/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  String? _email;
  String? _password;
  String? _retryPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Forgot Passowrd",
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
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "Forgot Passowrd",
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Please enter your email and we will send \nyou a link to return to your account",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
                  decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        gapPadding: 4,
                      ),
                      hintText: "Enter your email",
                      contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      labelText: "Email"),
                )),
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
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/signup");
                },
                child: RichText(
                    text: TextSpan(children: [
                  const TextSpan(
                      text: "Don't have on account? ",
                      style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: "Sign Up",
                      style: TextStyle(color: Colors.amber[600]))
                ]))),
            const Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
