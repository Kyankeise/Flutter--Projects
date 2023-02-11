import 'package:flutter/material.dart';
import 'jewellery_list.dart';

class JewelleryDetail extends StatefulWidget {
  final Jewellery jewellery;

  const JewelleryDetail({
    Key? key,
    required this.jewellery,
  }) : super(key: key);

  @override
  _JewelleryDetailState createState() {
    return _JewelleryDetailState();
  }
}

class _JewelleryDetailState extends State<JewelleryDetail> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    // 1 - Scaffold defines the pages general structure/
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.jewellery.label),
      ),
      //2 - In the body theres a SafeArea, a Column with a container, a sizedBox and Text children.
      body: SafeArea(
        //3 - Safearea keeps the app from getting too close to the operating system interfaces, such as the interactive area of most Iphones.
        child: Column(
          children: <Widget>[
            //4 One new thing is the SizedBox around the image, which defines resizeable bounds for the image.
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.jewellery.imageUrl),
              ),
            ),
            //5 There is a spacer SizedBox.
            const SizedBox(
              height: 4,
            ),
            //6 The text for the label has a style thats a little drifferent than the main Card, to show you how much customizability is available.
            Text(widget.jewellery.label, style: const TextStyle(fontSize: 18)),

            //7 An expanded widget expands to fill the space in a column, this way the ingrediants will take up the space not filled by the other widgets.
            Expanded(
              //8 A ListView, with one row per ingredient.

              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.jewellery.specifications.length,
                itemBuilder: (BuildContext context, int index) {
                  final specification = widget.jewellery.specifications[index];
                  //9 A Text that uses string interpolation to populate a string with runtime values. with the use of the ${expression} syntax.
                  // Add Jewellery details
                  return Text('${specification.carat * _sliderVal}'
                      '${specification.length}'
                      '${specification.metal}'
                      '${specification.price}');
                },
              ),
            ),
            // add Slider() here
            Slider(
              //10  You use min, max and division to define how the sliders move. in this case,it moves betweens values of 1,2,3,4,5,6,7,8,9 or 10.
              min: 1,
              max: 10,
              divisions: 10,

              // 11 label updates as the _sliderVal changes and displays a scaled number quantities
              label: '${_sliderVal * widget.jewellery.quantity} quantities',

              // 12 the slider works in double values, so this convers the int variable
              value: _sliderVal.toDouble(),
              // 13 Conversely, when the slider changes, this uses round() to convert the double slider value to an int then saves it in _sliderVal.
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              // 14 this sets the sliders colours. the section activeColor is the section between the minimum value and the thumb, and the inactiveColor represents the rest.
              activeColor: Colors.yellow,
              inactiveColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
