import 'package:flutter/material.dart';
import 'package:interactive_app/home.dart';
import 'package:interactive_app/models/models.dart';
import 'package:provider/provider.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: Create theme
    // TODO: Apply Home widget
    // 3
    return MaterialApp(
      // TODO: Add theme
      title: 'Fooderlich',
      // 4
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TabManager()),
          //TODO 10: Add GroceryManager Provider
          ChangeNotifierProvider(create: (context) => GroceryManager()),
        ],
        child: Home(),
      )

      // Scaffold(
      //   // TODO: Style the title
      //   appBar: AppBar(title: const Text('Fooderlich')),
      //   // TODO: Style the body text
      //   body: const Center(child: Text('Let\'s get cooking 👩‍🍳')),
      // ),
    );
  }
}