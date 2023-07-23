import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wedding_final_mvc/views/home_page.dart';
import 'package:wedding_final_mvc/ui/colors_constants.dart';
// import 'package:wedding_final_mvc/ui/colors_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: CcolorConstants.background_color,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
