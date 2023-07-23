import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);
// 1 Define string variables to display on the card. This is just a sample data
// to help build the card.

  final String catergory = 'Eitors\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread';
  final String chef = 'Ray Wenderlich';

  //2 Every stateless widget comes with a build() method that you override.
  @override
  Widget build(BuildContext context) {
    //3 Start with a container laid out in the center.
    return Center(
      child: Container(
        // TODO: card1 Decorate Container
        child: Stack(
          children: [
            // 8 The catergory, Editors choice, stays where it is. Remember
            // Container already appiles a padding of 16 on all sides.
            Text(
              catergory,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
            //9 You place the title 20 pixels from the top.
            Positioned(
              child: Text(
                title,
                style: FooderlichTheme.darkTextTheme.headline2,
              ),
              top: 20,
            ),
            // 10 Here, you postition the description 30 pixels from the bottom
            // and 0 to the right.
            Positioned(
              child: Text(
                description,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30,
              right: 0,
            ),
            // 11 Finally, you position the chef's name 10 pixels from the
            // bottom-right.

            Positioned(
              child: Text(
                chef,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
              right: 0,
            ),
          ],
        ),
        // 1 Apply a padding of 16 on all sides of the box. Flutter units are
        //specified in logical pixels, which are like dp for android.
        padding: const EdgeInsets.all(16),
        // 2 Constrain the containers size to a width of 350 and  a height of
        //450.
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),

        // 3 Apply BoxDecoration. This describes how to draw a box.

        decoration: const BoxDecoration(
          //4 In BoxDeecoration, set up DecorationImage, which tells the box to
          // paint an image.

          image: DecorationImage(
            image: AssetImage('assets/mag1.png'),

            //6 Cover the entire box with that image.

            fit: BoxFit.cover,
          ),

          //7 Apply a corner radius of 10 to all sides of the container.
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
