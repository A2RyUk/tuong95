import 'dart:math';
import 'package:flutter/material.dart';

class Product{
  int? id;
  String name;          //tên sản phẩm
  String urlName;       //hình ảnh
  int price;            //giá bán
  String description;   //mô tả sản phẩm

  int? categoryId;      //thuộc loại sản phẩm nào (hoodie, giày, nội thất....)

  //hàm khởi tạo
  Product({
    required this.id,
    required this.name,
    required this.urlName,
    required this.price,
    required this.description,
    this.categoryId
  });
}
