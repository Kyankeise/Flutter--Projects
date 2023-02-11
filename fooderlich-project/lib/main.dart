import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home.dart';

import 'fooderlich_theme.dart';

// rule of thumb only pick one design system for your UI.

void main() {
  // 1 Everything in Flutter starts with a widget. runApp() takes in the root
  //widget Fooderlich
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2 Every stateless widget must override the build() method.

  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: Create theme

    final theme = FooderlichTheme.dark();

    // 3 The Fooderlich widget starts by composing a MaterialApp widget to give
    // it a material design system look and feel.
    // return  cupertino if you want a IOS feel.

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // TODO: Add theme
      theme: theme,
      title: 'Car Showroom',
      home: const Home(),
    );
    // 4  The material app widget contains a Scaffold widget, this defines the
    // layout of the app, Scaffold contain two properties an appBar and a body
  }
}
