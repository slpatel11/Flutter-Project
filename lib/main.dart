import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my/category/screen/categories_screen.dart';
import 'package:my/category/screen/tabs_screen.dart';

import 'Home/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'DealMeals',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      /*home:  CategoriesScreen(),*/
      initialRoute: '/',
      routes: {
        '/': (ctx)=>TabsScreen(),
      },
    );
  }
}


