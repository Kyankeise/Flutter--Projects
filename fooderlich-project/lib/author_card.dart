import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'circle_image.dart';

class AuthorCard extends StatefulWidget {
  //1 AuthorCard has three properties: authorName, the authors job title and the
  // profile image, which imageProvider provides.

  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorited = false;
  @override
  Widget build(BuildContext context) {
    // TODO: Replace return Container(...);
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        // the outer Row wwidget applies a spaceBetween alignment. This adds
        // extra space evenly between the outer rows children.  placing the
        // IconButton at the far right of the screen.

        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          //1 The inner Row groups the CircleImage and the authors Text
          // information.
          Row(
            children: [
              CircleImage(
                imageProvider: widget.imageProvider,
                imageRadius: 28,
              ),
              //2 Applies 8 pixelsof padding between the image and the text.
              const SizedBox(width: 8),
              //3 Lays out the authors name and job title vetically using a
              // Column.

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.authorName,
                    style: FooderlichTheme.darkTextTheme.headline2,
                  ),
                  Text(
                    widget.title,
                    style: FooderlichTheme.darkTextTheme.headline3,
                  ),
                ],
              ),
            ],
          ),
          IconButton(
              //1 - First, it checks if the user has favorited this recipe card.
              // If True, it shows a filled heart. If false, it shows a filled
              // heart. If false, it shows an outlined heart.

              icon: Icon(_isFavorited ? Icons.favorite : Icons.favorite_border),
              iconSize: 30,
              //2 It changes the color to red to give the app more life.
              color: Colors.red[400],
              onPressed: () {
                //3 When the user presses the IconButton, it toggles the
                // _isFavorited state via a call to setState().
                setState(() {
                  _isFavorited = !_isFavorited;
                });
              }),
        ],
      ),
    );
  }
}
