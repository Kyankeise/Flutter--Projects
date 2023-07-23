import 'package:flutter/material.dart';

// Data model - will be using hard code in this example

class Jewellery {
  int quantity;
  List<Specification> specifications;
  String label;
  String imageUrl;
  // add different jewellery pieces here

  Jewellery(
    this.label,
    this.imageUrl,
    this.quantity,
    this.specifications,
  );

// Add List<Jewellery> here
  static List<Jewellery> examples = [
    Jewellery(
      'Rope Bracelet',
      'bmg_0732_1.jpeg',
      1,
      [
        Specification(1800, '9 carat', 'Yellow Gold', 18),
      ],
    ),
    Jewellery('Classic Rope Chain', '2_21_3.jpeg', 18, [
      Specification(2000, '9 carat', 'Yellow Gold', 9),
    ]),
    Jewellery(
      'Solid Textured Square Curb Bracelet',
      'bmg_0602_7.jpeg',
      1,
      [
        Specification(1200, '9 carat', 'Yellow Gold', 9),
      ],
    ),
  ];
}

// Add Material() here

class Specification {
  double price;
  String carat;
  String metal;
  int length;

  Specification(
    this.price,
    this.carat,
    this.metal,
    this.length,
  );
}
