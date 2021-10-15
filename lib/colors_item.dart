import 'package:flutter/material.dart';
import 'package:lesson1/models/fake_data.dart';
import 'package:lesson1/models/color.dart';
import 'package:lesson1/models/product.dart';
import 'package:lesson1/widgets/color_choice_page.dart';

class ColorsItem extends StatelessWidget{

  Product product;
  ColorsItem({required this.product});

  @override
  Widget build(BuildContext context) {
    List<ProductColor> colors = FAKE_PRODUCTS_COLORS.where((color) => color.productId == product.id).toList();
    return Column(
      children: <Widget>[
        Column(
          children: colors.map((eachColor) => ColorChoiceColumn(productColor: eachColor,)).toList(),
        ),
        Padding(padding: EdgeInsets.only(top: 200)),
      ],
    );
    throw UnimplementedError();
  }
}