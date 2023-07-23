import 'package:flutter/material.dart';
import 'author_card.dart';
import 'fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      //1 The center widget has a Container child widget which has three
      // properties, the first two being constraints and decoration
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bmw-m3.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        //2 The third property is child and has a Column widget, which
        // displays its children vertically.

        child: Column(
          children: [
            AuthorCard(
              authorName: 'Kyan Keise',
              title: 'Prestige Car Expert',
              imageProvider: const AssetImage(
                'assets/kyan_image.jpeg',
              ),
            ),
            // TODO: add positional text

            // 1 With Expanded, you fill in the remainibg available space.
            Expanded(
                //2 Apply a Stack widget to position the texts on top of each
                // other.

                child: Stack(
              children: [
                //3 Position the first text 16 pixels from the bottom and 16
                // pixels to the right.
                Positioned(
                  bottom: 46,
                  right: 16,
                  child: Text(
                    'Kyan\'s',
                    style: FooderlichTheme.darkTextTheme.headline1,
                  ),
                ),
                //4 Finally, position the second text 70 pixels from the bottom
                // and 16 pixels from the left. Also apply a RotatedBox widget,
                // which rotates the Text clockwise three quarterTurns. This
                // makes it appear vertical.

                Positioned(
                  bottom: 70,
                  left: 16,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Hot Wheels',
                      style: FooderlichTheme.darkTextTheme.headline1,
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
