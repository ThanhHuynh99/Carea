import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class LayoutSecond extends StatefulWidget {
  final String? title;
  final Widget child;
  const LayoutSecond({super.key, this.title = "", required this.child});

  @override
  State<LayoutSecond> createState() => _LayoutSecondState();
}

class _LayoutSecondState extends State<LayoutSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            onPressed: () {
              Navigator.of(context).pop("reload");
            },
            child: const Icon(
              HeroIcons.arrow_left,
              color: Colors.black,
              size: 24,
            )),
        title: Text(
          widget.title!,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: widget.child,
      ),
    );
  }
}
