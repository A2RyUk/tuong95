import 'package:lesson1/models/color.dart';
import 'package:lesson1/models/product.dart';
import 'package:flutter/material.dart';
import 'package:lesson1/models/fake_data.dart';
import 'package:lesson1/widgets/color_choice_row.dart';

class ColorsRow extends StatelessWidget {

  Product product;

  ColorsRow({required this.product});

  @override
  Widget build(BuildContext context) {
    List<ProductColor> colors = FAKE_PRODUCTS_COLORS.where((color) =>
    color.productId == product.id).toList();
    return Row(
      children: <Widget>[
        Row(
          children: colors.map((eachColor) =>
              ColorChoiceRow(productColor: eachColor,)).toList(),
        ),
      ],
    );
    throw UnimplementedError();
  }
}