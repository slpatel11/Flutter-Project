import 'package:flutter/material.dart';
import 'package:my/category/model/dummy_data.dart';
import 'package:my/category/screen/categories_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GridView(
        padding: const EdgeInsets.all(25),
        children: Dummy_Categories.map(
          (catData) => CategoryItem(catData.title, catData.color,catData.id),
        ).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      );
  }
}
