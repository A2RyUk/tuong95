import 'package:flutter/material.dart';
import 'package:lesson1/models/fake_data.dart';
import 'package:lesson1/product_item.dart';
import 'package:lesson1/models/product.dart';

class TabHoddie extends StatelessWidget{

  List<Product> product = FAKE_PRODUCTS.where((product) => product.categoryId == 4).toList();

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(20),
      children: product.map((eachProduct) => ProductItem(product: eachProduct)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(   //gridDelegate là ta chọn theme, cái thể loại cái mẫu sắc của GridView
        maxCrossAxisExtent: 300,        //chiều rộng max là 300
        mainAxisExtent: 255,
        //độ rộng giữa các lưới, chiều dọc chiều ngang là theo crossAxisSpacing và mainAxisSpacing
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
    throw UnimplementedError();
  }
}