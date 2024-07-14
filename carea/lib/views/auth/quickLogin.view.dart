import 'package:carea/components/layouts/layoutSecond.component.dart';
import 'package:carea/constants/colors.constant.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../components/buttons/button.component.dart';

class QuickLoginScreen extends StatefulWidget {
  const QuickLoginScreen({super.key});

  @override
  State<QuickLoginScreen> createState() => _QuickLoginScreenState();
}

class _QuickLoginScreenState extends State<QuickLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutSecond(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height - 80,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 60),
              Image.asset(
                "assets/images/logo.png",
                height: 160,
                fit: BoxFit.cover,
              ),
              const Spacer(),
              const Text(
                "Let's you in",
                style: TextStyle(
                    fontSize: 48,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {},
                  style: buttonBorder16,
                  child: SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Logo(
                          Logos.facebook_f,
                          size: 24,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Continue with Facebook",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(COLOR.dark),
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {},
                  style: buttonBorder16,
                  child: SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Logo(
                          Logos.google,
                          size: 24,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Continue with Google",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(COLOR.dark),
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {},
                  style: buttonBorder16,
                  child: SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Logo(
                          Logos.apple,
                          size: 24,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Continue with Apple",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(COLOR.dark),
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )),
              const SizedBox(height: 16),
              SizedBox(
                height: 58,
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Divider(
                      thickness: 2,
                      color: Color(COLOR.light),
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Or",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(COLOR.dark200)),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 2,
                      color: Color(COLOR.light),
                    ))
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: buttonPrimary,
                child: const SizedBox(
                  height: 58,
                  child: Center(
                    child: Text(
                      "Sign in with password",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(COLOR.grey)),
                  ),
                  const SizedBox(width: 5),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(COLOR.dark)),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
