import 'package:flutter/material.dart';
import 'package:interactive_app/models/models.dart';
import 'package:provider/provider.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Todo 3: Replace and add layout widgets
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Todo 4: Add empty image
            Flexible(child: AspectRatio(
              aspectRatio: 1/1,
              child: Image.asset('assets/image/empty_list.png'),
            ),),
            // Todo 5: Add empty screen title
            const Text(
              'No Groceries',
              style: TextStyle(fontSize: 21.0),
            ),
            // Todo 6: Add empty screen subtitle
            const SizedBox(height: 16.0),
            const Text(
              'Shopping for ingredients?\n'
                  'Tab the + button to write them down!',
              textAlign: TextAlign.center,
            ),
            // Todo 6: Add browse recipes button
            MaterialButton(
              textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)
                ),
                color: Colors.green,
                onPressed: (){
                //Todo 8: Go to Recipes Tab
                  Provider.of<TabManager>(context, listen: false).gotoRecipes();
                },
                child: const Text('Browse Recipes'),
            ),
          ],
        ),
      ),
    );
  }
}
