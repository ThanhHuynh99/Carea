import 'package:carea/components/buttons/button.component.dart';
import 'package:carea/components/inputs/input_type_email.component.dart';
import 'package:carea/components/inputs/input_type_password.component.dart';
import 'package:carea/components/layouts/layoutSecond.component.dart';
import 'package:carea/constants/colors.constant.dart';
import 'package:carea/views/auth/create_account.view.dart';
import 'package:carea/views/auth/forgot_password/type_verify.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../components/layouts/layoutMain.component.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userAccountController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late bool isChecked = false;
  late bool isShowPassword = false;
  late String userName = "";
  late String password = "";

  onclickCheck() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  setUserName(e) {
    setState(() {
      userName = e;
    });
  }

  setPassword(e) {
    setState(() {
      password = e;
    });
  }

  showPassword(e) {
    setState(() {
      isShowPassword = e;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutSecond(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          width: double.infinity,
          height: MediaQuery.of(context).size.height - 80,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  "assets/images/logo.png",
                  height: 160,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 30),
                const Text(
                  "Login to Your Account",
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 32),
                emailField(context, userName, "Email", setUserName, false,
                    userAccountController),
                const SizedBox(height: 16),
                passWordField(password, isShowPassword, showPassword,
                    setPassword, passwordController),
                const SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: onclickCheck,
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: isChecked ? Color(COLOR.dark) : Colors.white,
                            border:
                                Border.all(width: 3, color: Color(COLOR.dark))),
                        child: const Center(
                          child: Icon(
                            FontAwesome.check,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: onclickCheck,
                      child: Text(
                        "Remember me",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(COLOR.dark)),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LayoutMain()));
                  },
                  style: buttonPrimary,
                  child: const SizedBox(
                    height: 58,
                    child: Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 26),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VerifyTypeScreen()));
                  },
                  child: Text(
                    "Forgot the password?",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(COLOR.dark)),
                  ),
                ),
                const SizedBox(height: 10),
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
                          "Or continue with",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 18),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: BorderSide(
                                  width: 1, color: Color(COLOR.light))),
                        ),
                        child: Logo(
                          Logos.facebook_f,
                          size: 24,
                        )),
                    const SizedBox(width: 20),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 18),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: BorderSide(
                                  width: 1, color: Color(COLOR.light))),
                        ),
                        child: Logo(
                          Logos.google,
                          size: 24,
                        )),
                    const SizedBox(width: 20),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 18),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: BorderSide(
                                  width: 1, color: Color(COLOR.light))),
                        ),
                        child: Logo(
                          Logos.apple,
                          size: 24,
                        )),
                  ],
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
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CreateAccountScreen()));
                      },
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
      ),
    );
  }
}
