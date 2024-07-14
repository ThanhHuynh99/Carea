import 'package:carea/views/auth/login.view.dart';
import 'package:flutter/material.dart';
import '../../components/buttons/button.component.dart';

class Started extends StatefulWidget {
  const Started({super.key});

  @override
  State<Started> createState() => _StartedState();
}

class _StartedState extends State<Started> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 48),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Spacer(flex: 1),
              SizedBox(
                height: 300,
                child: Image.asset(
                  "assets/images/cars/BMW-m4.png",
                  fit: BoxFit.cover,
                ),
              ),
              const Spacer(flex: 1),
              const Text(
                "The best car in your hands with Carea",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontFamily: "Urbanist",
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  style: buttonPrimary,
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
