import 'package:flutter/material.dart';
import 'package:lesson1/models/category.dart';

class CategoryItem extends StatelessWidget{
  Category category;
  CategoryItem({required this.category});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text(this.category.name, style: TextStyle(fontSize: 14, color: Colors.black45),),
    );
    throw UnimplementedError();
  }
}