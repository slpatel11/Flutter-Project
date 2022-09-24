import 'package:flutter/material.dart';
import 'package:my/category/model/dummy_data.dart';
import 'package:my/category/screen/meal_item.dart';

class MealScreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;

  MealScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              categoryMeals[index].id,
              categoryMeals[index].title,
              categoryMeals[index].imageUrl,
              categoryMeals[index].duration,
              categoryMeals[index].complexity,
              categoryMeals[index].affordability
            );
          },
          itemCount: categoryMeals.length,
        ));
  }
}
