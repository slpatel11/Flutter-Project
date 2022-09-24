import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my/category/screen/FilterScreen.dart';
import 'package:my/category/screen/tabs_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up!',
              style: TextStyle(fontSize: 30),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 26,
            ),
            title: Text(
              'Meals',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            onTap: (){
              Get.to(TabsScreen());
            },
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 26,
            ),
            title: Text(
              'Filter',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            onTap: (){
              Get.to(FilterScreen());
            },
          )
        ],
      ),
    );
  }
}
