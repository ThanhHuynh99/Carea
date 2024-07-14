import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../constants/colors.constant.dart';

Widget emailField(BuildContext context, String email, String label, onChange,
    bool isLastedField, TextEditingController userName) {
  return Container(
    height: 58,
    decoration: const BoxDecoration(
        color: Color(0xFFFAFAFA),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    alignment: Alignment.center,
    child: TextFormField(
      controller: userName,
      onChanged: (value) {
        onChange(value);
      },
      textInputAction:
          isLastedField == false ? TextInputAction.next : TextInputAction.done,
      keyboardType: TextInputType.emailAddress,
      cursorColor: Color(COLOR.dark),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),
        focusColor: Color(COLOR.dark),
        fillColor: Color(COLOR.dark),
        hoverColor: Color(COLOR.dark),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFFFAFAFA), width: 1),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(COLOR.dark), width: 1),
        ),
        labelStyle: TextStyle(
          color: Color(COLOR.dark),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintText: label,
        prefixIcon: Icon(
          Iconsax.sms,
          color: Color(COLOR.grey),
        ),
      ),
    ),
  );
}
