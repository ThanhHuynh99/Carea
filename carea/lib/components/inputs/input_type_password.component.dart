import 'package:carea/constants/colors.constant.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

Widget passWordField(String password, bool isShowPassword, setShowPassword,
    onChange, TextEditingController passwordController) {
  return Container(
    height: 58,
    decoration: const BoxDecoration(
        color: Color(0xFFFAFAFA),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    alignment: Alignment.center,
    child: TextFormField(
      controller: passwordController,
      enableSuggestions: true,
      obscureText: !isShowPassword,
      cursorColor: Color(COLOR.dark),
      decoration: InputDecoration(
          suffixIcon: IconButton(
              color: Color(COLOR.grey),
              icon: isShowPassword == false
                  ? const Icon(Icons.visibility_off_outlined)
                  : const Icon(Icons.remove_red_eye_outlined),
              onPressed: () {
                setShowPassword(!isShowPassword);
              }),
          focusColor: Color(COLOR.dark),
          fillColor: Color(COLOR.dark),
          hoverColor: Color(COLOR.dark),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFFAFAFA), width: 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFFAFAFA), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(COLOR.dark), width: 1)),
          contentPadding: const EdgeInsets.all(20),
          labelStyle: TextStyle(
            color: Color(COLOR.dark),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          hintText: "******",
          prefixIcon: const Icon(Iconsax.lock),
          prefixIconColor: Color(COLOR.grey)),
      onChanged: (value) {
        onChange(value);
      },
    ),
  );
}
