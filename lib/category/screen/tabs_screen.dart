import 'package:flutter/material.dart';
import 'package:my/category/screen/categories_screen.dart';
import 'package:my/category/screen/favorites_screen.dart';
import 'package:my/category/screen/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
 final List<Widget>_pages=[
    CategoriesScreen(),
    FavoritesScreen()
  ];
 int selectedPageIndex=0;
  void _selectPage(int index){
    setState((){
      selectedPageIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals'),
      ),
      drawer: MainDrawer(),
      body: _pages[selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.orange,
        currentIndex: selectedPageIndex,
        /*type: BottomNavigationBarType.shifting,*/
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            label: 'Favorites'
          )
        ],
      ),
    );
  }
}
