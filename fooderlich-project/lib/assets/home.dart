import 'package:flutter/material.dart';
import 'package:fooderlich/card1.dart';
// import 'fooderlich_theme.dart';

// 1  Your class now extends StatefulWidget

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Add state variables and functions
  // 7 _SelecetedIndex keeps track of which tab is currently selected. The under
  // score signifies its private. the selected  index is the state being tracked
  // by _HomeState.
  int _SelectedIndex = 0;

  //8 Here we define the widgets that will be displayed on each tab. In this
  // case it will be the card widgets.

  static List<Widget> pages = <Widget>[
    // TODO: Replace with card 1
    const Card1(),
    // TODO: Replace with card 2
    Container(color: Colors.green),
    // TDO Replace with card 3
    Container(color: Colors.blue),
  ];

  // 9 This function handles tapped bar items Here you set the index of the
  // item that the user pressed. setState() notiies the framework that the state
  // of this object has changed, then rebuilds this widget internally.

  void _onItemTapped(int index) {
    setState(() {
      _SelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          //2 The appBar style now reads: style:
          //Theme.of(context).textTheme.headline6 instead of
          // theme.textTheme.headline6, Theme.of(context) returns the nearest
          // Theme in the widget tree. If the widget has a defined Theme, it
          // returns that. Otherwise, it returns the apps theme.

          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // TODO: Show selected tab
      body: Center(
        child: Text(
          'Lets\'s get cooking 👩‍🍳',

          // 3 As with the appBar, you've updated the Text style to use the
          // Theme.of(context).

          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      // TODO: Add bottom navigation bar

      //4 Defined a BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        //5 Set selection color of an item when tapped

        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // TODO: Set selected tab bar

        //6 Defined three bottom navigation tabs

        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card1',
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card2'),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
