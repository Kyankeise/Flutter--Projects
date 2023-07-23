import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage('side.jpg'), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            // TODO 5: add dark overlay BoxDecoration
            Container(
              decoration: BoxDecoration(
                //1 You add a container with a color overlay with a 60% semi-
                // transparent background to maker the image appear darker.
                color: Colors.black.withOpacity(0.6),
                //2 This gives the appearance of rounded image corners.
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),

            // TODO 6: Add Container, Column, Icon and Text
            Container(
              //3 Apply padding of 16 pixels on each sides.
              padding: const EdgeInsets.all(16),
              //4 Set uo a child Column to lay out the widgets to the left of
              // the column.
              child: Column(
                //5 Position all the widgets to the left of the column.
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //6 Add a book icon.
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  // 7 Apply an 8-pixel space vertically.
                  const SizedBox(height: 8),
                  //8 Apply a 30 pixel space vertically.
                  Text(
                    'Car Manufacturers',
                    style: FooderlichTheme.darkTextTheme.headline2,
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),

            // TODO 7: Add Center widget with Chip widget children
            // 10 You add a Center widget.
            Center(
              // 11 Wrap is a layout widget that attempts to lay out each of its
              // children adjacent to the previous children. If theres not
              // enough space, it wraps to the next line.
              child: Wrap(
                // 12  Place the child as close to the left, i.e the start, as
                // possible.
                alignment: WrapAlignment.start,
                // 13 Apply a 12-pixel space between each child.
                spacing: 12,
                // 14 Add thelist of chip widgets.
                children: [
                  Chip(
                    label: Text('BMW',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                  Chip(
                    label: Text('Aston Martin',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                  Chip(
                    label: Text('Mercedes-Benz',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text('Bentley',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text('Ferrari',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text('Bugatti',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                  Chip(
                    label: Text('Porsche',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
