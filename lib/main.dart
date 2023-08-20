import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper_anime/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeScreen,
      getPages: AppRoutes.routes,
    );
  }
}
