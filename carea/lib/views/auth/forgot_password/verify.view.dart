import 'dart:async';

import 'package:carea/components/layouts/layoutSecond.component.dart';
import 'package:carea/constants/colors.constant.dart';
import 'package:carea/views/auth/login.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../components/buttons/button.component.dart';

class VerifyCodeScreen extends StatefulWidget {
  final String? contact;
  const VerifyCodeScreen({super.key, this.contact});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  Timer? countdownTimer;
  Duration myDuration = Duration(minutes: 1);
  bool resendVerifyCode = false;
  int? pin1;
  int? pin2;
  int? pin3;
  int? pin4;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  /// Timer related methods ///
  // Step 3
  void startTimer() {
    myDuration = Duration(minutes: 2);
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

  // Step 4
  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  // Step 5
  void resetTimer() {
    stopTimer();
    setState(() => myDuration = Duration(minutes: 2));
  }

  // Step 6
  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
        setState(() {
          resendVerifyCode = true;
        });
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  void setPin1(e) {
    setState(() {
      pin1 = e;
    });
  }

  void setPin2(e) {
    setState(() {
      pin1 = e;
    });
  }

  void setPin3(e) {
    setState(() {
      pin1 = e;
    });
  }

  void setPin4(e) {
    setState(() {
      pin1 = e;
    });
  }

  @override
  void dispose() {
    startTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = strDigits(myDuration.inMinutes.remainder(60));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    return LayoutSecond(
        title: "Forgot Password",
        child: SingleChildScrollView(
          child: SafeArea(
              child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height - 80,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 60),
                Text(
                  "Code has been send to ${widget.contact ?? ""}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(COLOR.dark)),
                ),
                const SizedBox(height: 60),
                Form(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FormItem(
                        setValue: setPin1,
                      ),
                      FormItem(
                        setValue: setPin2,
                      ),
                      FormItem(
                        setValue: setPin3,
                      ),
                      FormItem(
                        setValue: setPin4,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Resend code in",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(COLOR.dark)),
                    ),
                    const SizedBox(width: 5),
                    resendVerifyCode
                        ? InkWell(
                            onTap: () {
                              startTimer();
                            },
                            child: const Text(
                              "Resend now",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFFF2D44),
                                  decoration: TextDecoration.underline),
                            ),
                          )
                        : Text(
                            "$minutes:$seconds s",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(COLOR.dark)),
                          )
                  ],
                ),
                const SizedBox(height: 100),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  style: buttonPrimary,
                  child: const SizedBox(
                    height: 58,
                    child: Center(
                      child: Text(
                        "Verify",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ));
  }
}

class FormItem extends StatelessWidget {
  final Function setValue;
  const FormItem({
    super.key,
    required this.setValue,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 80,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        onSaved: (value) {
          setValue(value);
        },
        style: TextStyle(
            fontSize: 28,
            height: 1.7,
            color: Color(COLOR.dark),
            fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          hintText: "0",
          filled: true,
          fillColor: Color(COLOR.bgFA),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(COLOR.light), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Color(COLOR.dark))),
        ),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
