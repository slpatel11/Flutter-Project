import 'package:flutter/material.dart';
import 'package:my/category/screen/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Filter'),),
      drawer: MainDrawer(),
      body: Container(
        child: Center(
          child: Text('Filter screen'),
        ),
      ),
    );
  }
}
