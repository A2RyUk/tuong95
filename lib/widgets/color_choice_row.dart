import 'package:flutter/material.dart';
import 'package:lesson1/models/fake_data.dart';
import 'package:lesson1/models/color.dart';
import 'package:lesson1/detail_product_item_page.dart';

class ColorChoiceRow extends StatelessWidget{

  ProductColor productColor;
  Color selectedColor = Colors.white;

  ColorChoiceRow({
    required this.productColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      height: 20,
      width: 20,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: productColor.color,
            shape: BoxShape.circle
        ),
      ),
    );
    throw UnimplementedError();
  }
}
