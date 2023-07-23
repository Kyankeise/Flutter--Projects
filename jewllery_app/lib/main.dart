import 'package:flutter/material.dart';
import 'jewellery_list.dart';
import 'jewellery_detail.dart';

// State - information that can be read synchronously when a widget is built, and might change
// during the lifetime of the widget

// Synchronous - something that happens at the same time.
// Asynchronous - something that doesnt happen at the sametime.

// Widget vs Function/Method - concept of functions belongs to the dart language. Concept of
// widgets belong to flutter. If we define a function, Flutter has no awareness
// were using this to add a widget to a sub tree.

// Widget class - central class hierarchy in the flutter framework. A widget is a
// immutabe description of part of a user interface.

// Void - return type of the function - means when the function executes all the code inside
// it should return this value when we dont need to return a value

// main() - Any dart script requires the main method for its execution  responsilbe for executing all
// libary functions user-defined statements and user-defined functions.

// runApp() - takes the given widget and makes it the root of the widget tree
void main() {
  runApp(const MyJewelleryApp());
}

// Variable - data values that can change when a user is asked a question example, their age

// const -  when the compiler knows in advance what value is to be stored in the variable

// Compiler - software that translates source code written in high level language
// into a set of machine-language instructions that can be understood by a computers cpu

// extends - allows you to share properties and methods between classes that are
// similar but not exactly the same.

class MyJewelleryApp extends StatelessWidget {
// Stateless - A widget that does not require mutable state.
// stateful -  A dynamcic widget that can change its appearance in response to events triggered by user interactions.
// or when it recieves data. Checkbox, Radio buttons, sliders, Form and TextField are some examples.

  const MyJewelleryApp({Key? key}) : super(key: key);

// key - used when it needs to uniquely identify specific widgets within a collection.
// super - used to call the constructor of the base class

// 1 Composing other widgets to make a new widget
  @override

  // Override -  overriding a superclass member with the same name.
  // build - describes part of the user interface represented by this widget.
  // BuildContext - a handle to the location of a widget in the widget tree

  Widget build(BuildContext context) {
    // 2 visual aspects
    final ThemeData theme = ThemeData();

    // final - final variable or field must have an intitalizer. Once assigned a value, a final variable
    // cannot be changed.

    //3 making use of Material app developed by Google
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // 4 description device uses to identify app (tab)
      title: 'Jewellery Catalogue',

      // 5 copying the theme and replacing it with the color scheme of an updated
      // allows you to change the apps colors
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.yellow,
          secondary: Colors.red,
        ),
        // 6 still uses the same My home page but now the title of the app has been
        // updated
      ),
      home: const MyHomePage(
        title: 'Jewellery Catalogue',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

// createState - creates the mutable state for this widget at a given location in the tree.
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      // 3

      body: SafeArea(
        // 4 Builds a list using ListView
        child: ListView.builder(
          //5 itemCount determines the number of rows a list has. lenghth is the number of objects in Jewellery.examples
          itemCount: Jewellery.examples.length,
          // 6 itermBuilder builds the widget tree for each row
          itemBuilder: (BuildContext context, int index) {
            // 7 Inrroduces a GestureDectector widget, which detects gestures
            return GestureDetector(
              // 8 implements an onTap function, which is the callback called when the widget is tapped
              onTap: () {
                // 9  The Navigator widget manages a stack of pages calling push() with a MaterialPageRoute will push a new material page onto the stack.
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // 10 builder creates the destination page widget
                      return JewelleryDetail(
                          jewellery: Jewellery.examples[index]);
                    },
                  ),
                );
              },
              // 11 GestureDectector's child widget defines the area where the gesture is active.
              child: buildJewelleryCard(Jewellery.examples[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildJewelleryCard(Jewellery jewellery) {
    //1 You return a card from buildRecipeCard().
    //2 the Cards child property is a Column. A Column is a widget that defines a vertical layout.
    return Card(
      // 1.1 - elevation determines how high off the screen card is.
      elevation: 2.0,
      // 1.2 - shape handles the shape of the card.
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      // 1.3 - Padding insets its childs contents by the specified padding value.
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // 1.4 - padding child still the same vertical Column with the image and text
        child: Column(
          //3 The Column has 2 children.
          children: <Widget>[
            //4 the first child is an Image widget. AssetImage states that the image is fetched from the local asset bundle defined in pubspec.yaml.
            Image(image: AssetImage(jewellery.imageUrl)),
            // 1.5 -  Between the image and text is a Sizedbox. This is a blank view with a fixed size.
            const SizedBox(
              height: 14.0,
            ),
            // 1.6 - You can customize Text widgets with a style object.
            //5 A Text widget is the second child. It will contain the jewellery.label value
            Text(
              jewellery.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
