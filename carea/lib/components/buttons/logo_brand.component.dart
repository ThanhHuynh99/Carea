import 'package:flutter/material.dart';

class ButtonLogoBrand extends StatelessWidget {
  final String imageURL;
  final String brandName;
  final Function? function;

  const ButtonLogoBrand({
    super.key,
    this.imageURL = "",
    this.brandName = "",
    this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: const Color(0xFFF3F3F3),
            ),
            child: Center(
              child: Image.asset(
                imageURL,
                height: 32,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            brandName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Color(0xFF474747),
            ),
          )
        ],
      ),
    );
  }
}
