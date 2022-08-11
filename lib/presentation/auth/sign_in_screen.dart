import 'dart:developer';

import 'package:clone_ecommerce_ui/presentation/components/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isRemberMe = false;
  String _password = "";
  String _email = "";

  @override
  void initState() {
    super.initState();
    _isRemberMe = false;
    _password = "";
    _email = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Sign in",
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
                "Wecome Back",
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Sign in with your email and password\nor continue with social media",
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        gapPadding: 4,
                      ),
                      hintText: "Enter your password",
                      contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      labelText: "Password"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    Checkbox(
                      value: _isRemberMe,
                      onChanged: (value) {
                        setState(() {
                          if (value != null) {
                            _isRemberMe = value;
                          }
                        });
                      },
                    ),
                    const Text("Rememeber me"),
                    const Spacer(
                      flex: 1,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/forgotpassword");
                        },
                        child: const Text(
                          "Forgot Password",
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxWidth: 300, minWidth: 300, minHeight: 50),
                child: ContinueButton(
                  onPress: () {
                    Navigator.pushNamed(context, "/login/success");
                  },
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Expanded(
                  child: Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Ink(
                        width: 40,
                        height: 40,
                        decoration: ShapeDecoration(
                            shape: const CircleBorder(),
                            color: Colors.grey[200]),
                        child: IconButton(
                            onPressed: () {
                              log("message");
                            },
                            icon: SvgPicture.asset(
                                "assets/icons/google-icon.svg")),
                      ),
                    ),
                    Center(
                      child: Ink(
                        decoration: ShapeDecoration(
                            shape: const CircleBorder(),
                            color: Colors.grey[100]),
                        child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                                "assets/icons/facebook-2.svg")),
                      ),
                    ),
                    Center(
                      child: Ink(
                        decoration: ShapeDecoration(
                            shape: const CircleBorder(),
                            color: Colors.grey[100]),
                        child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/twitter.svg")),
                      ),
                    )
                  ],
                ),
              )),
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
        ));
  }
}
