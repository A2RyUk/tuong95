import 'package:flutter/material.dart';
import 'package:lesson1/models/fake_data.dart';
import 'package:lesson1/models/color.dart';
import 'package:lesson1/detail_product_item_page.dart';

class ColorChoiceColumn extends StatefulWidget{

  ProductColor productColor;
  Color selectedColor = Colors.white;

  ColorChoiceColumn({
    required this.productColor,
  });


  @override
  State<StatefulWidget> createState() {
    return _ColorChoiceColumn();
    throw UnimplementedError();
  }
}

Color selectColor = Colors.transparent;

class _ColorChoiceColumn extends State<ColorChoiceColumn> with WidgetsBindingObserver{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(3),
        height: 30,
        width: 30,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.transparent)
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: widget.productColor.color,
              shape: BoxShape.circle
          ),
        ),
      ),
      onTap: (){
        setState(() {
          selectColor = widget.productColor.color;
        });
      },
    );
    throw UnimplementedError();
  }
}
