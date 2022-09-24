import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my/meal/screen/MealScreen.dart';
import '../model/dummy_data.dart';
class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  CategoryItem(this.title, this.color,this.id);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Get.to(MealScreen(id,title)),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(title),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            color.withOpacity(0.7),
            color,
          ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
        ),

      ),
    );
  }
}
