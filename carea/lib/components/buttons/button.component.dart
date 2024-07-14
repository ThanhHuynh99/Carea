import 'package:carea/constants/colors.constant.dart';
import 'package:flutter/material.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  minimumSize: const Size(double.infinity, 58),
  backgroundColor: Colors.black,
  elevation: 15,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(58),
  ),
  shadowColor: const Color.fromARGB(102, 16, 16, 16),
);

final ButtonStyle buttonBorder16 = ElevatedButton.styleFrom(
    minimumSize: const Size(double.infinity, 58),
    backgroundColor: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(width: 1, color: Color(COLOR.light))));
