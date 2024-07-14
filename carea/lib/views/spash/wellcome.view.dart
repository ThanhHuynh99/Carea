import 'package:carea/views/spash/started.view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Wellcome extends StatefulWidget {
  const Wellcome({super.key});

  @override
  State<Wellcome> createState() => _WellcomeState();
}

class _WellcomeState extends State<Wellcome> {
  Future<void> waitPrint() async {
    await Future.delayed(const Duration(seconds: 5));
    toStated();
  }

  void toStated() {
    Get.to(() => const Started());
  }

  @override
  void initState() {
    waitPrint();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: toStated,
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image:
                    AssetImage("assets/images/josh-berquist-_4sWbzH5fp8.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const <Widget>[
            Text(
              "Wellcome to 👋",
              style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  height: 1.5),
            ),
            Text(
              "Carea",
              style: TextStyle(
                  fontSize: 96,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  height: 1.5),
            ),
            SizedBox(height: 30),
            Text(
              "The best card maketplace app of the century for your transportation needs!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  height: 1.5,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    ));
  }
}
