import 'package:carea/views/home/home.dart';
import 'package:carea/views/spash/wellcome.view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'components/layouts/layoutMain.component.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Urbanist"),
      home: const Wellcome(),
    ),
  );
}
