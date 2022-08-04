import 'package:flutter/material.dart';
import 'package:interactive_app/screens/explore_screen.dart';
import 'package:interactive_app/screens/grocery_screen.dart';
import 'package:interactive_app/screens/tobuy_screen.dart';
import 'models/models.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Todo: Add state variables and functions


  // 8
  static List<Widget> pages = <Widget>[
    //Todo Replace with Card1
    const ExploreScreen(),
    //Todo Replace with Card1
    const TobuyScreen(),
    //Todo Replace with Card1
    const GroceryScreen(),
  ];



  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(builder: (context, tabManager, child){
      return Scaffold(
        appBar: AppBar(
          title: Text('Fooderlich', style: Theme.of(context).textTheme.headline6,),
        ),
        //  Todo: Show selected tab
        body: IndexedStack(
          index: tabManager.selectedTab,
          children: pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          // 5
          selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
          // 10
          currentIndex: tabManager.selectedTab,
          // 11
          onTap: (index){
            tabManager.goToTab(index);
          },
          // 6
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Recipes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'To Buy',
            ),
          ],
        ),
      );
    });
  }
}
