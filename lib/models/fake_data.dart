import 'package:flutter/material.dart';
import 'package:lesson1/models/category.dart';
import 'package:lesson1/models/product.dart';
import 'package:lesson1/models/color.dart';

//khởi tạo fake date với 1 array trong đó là các object category
final FAKE_CATEGORIES = [
  Category(id: 1, name: 'ALL'),               //tất cả
  Category(id: 2, name: 'FURNITURE'),         //danh mục nội thất
  Category(id: 3, name: 'SHOES'),             //danh mục giày
  Category(id: 4, name: 'HODDIE'),            //áo hoddie
  Category(id: 5, name: 'ACCESSORY')          //các phụ kiện
];

var FAKE_PRODUCTS = [
  Product(
      id: 1,
      name: 'Dining Chair',
      urlName: 'https://i.imgur.com/nSHoLua.png',
      price: 250,
      description: 'The Dining Chair. This item has been created by Space Copenhagen for the label Mater.',
      categoryId: 2
  ),
  Product(
      id: 2,
      name: 'Elegand Chair',
      urlName: 'https://i.imgur.com/E7FeKQJ.png',
      price: 280,
      description: 'Chair with armrests padded and finished in every detail. Structure in solid beech. Suitable for refined environments. Customizable.',
      categoryId: 2
  ),
  Product(
      id: 3,
      name: 'Eames Chair',
      urlName: 'https://i.imgur.com/fILqjTV.png',
      price: 200,
      description: 'Eames chair Eames chair wooden chair IKEA designer casual modern beech chairs upholstered chairs.',
      categoryId: 2
  ),
  Product(
      id: 4,
      name: 'Japan Hoodie',
      urlName: 'https://i.imgur.com/S2Lh3GN.png',
      price: 45,
      description: 'This hoodie is in Japanese size, our team advises you to take ONE SIZE UP or refer to our size chart. Take two sizes up for an oversized style.',
      categoryId: 4
  ),
  Product(
      id: 5,
      name: 'Naruto ',
      urlName: 'https://i.imgur.com/zdF6mFP.png',
      price: 22,
      description: 'Naruto Cosplay Anime Manga Kapuzen Sweatshirt shirt Hoodie pullover Hooded Pulli Herren.',
      categoryId: 4
  ),
  Product(
      id: 6,
      name: 'Full Sleeves',
      urlName: 'https://i.imgur.com/UhvCxJr.png',
      price: 15,
      description: 'Off White Casual Hoddie in Fleece with contrast stripes on sleeves .',
      categoryId: 4
  ),
  Product(
      id: 7,
      name: 'PG 5 EP',
      urlName: 'https://i.imgur.com/CAA3VcC.png',
      price: 134,
      description: 'Paul George has an effortlessly smooth, reliably steady game.He takes his time, but he always well-positioned to make the extrra pass, cut through the lane or nail a pull-up jumper.The PG 5 EP combines the agile low-top profile Paul likes with flexible Nike Air Dot Weld Strobel cushioning.The full-length Air unit is stitched directly to the upper, bringing the plush, bouncy cushioning right up under the foot—perfect for keeping PG feeling like he moving on clouds.This EP version uses an extra-durable outsole that ideal for outdoor courts.',
      categoryId: 3
  ),
  Product(
      id: 8,
      name: 'Air Force 1 07',
      urlName: 'https://i.imgur.com/9wlZma2.png',
      price: 115,
      description: 'The radiance lives on in the Nike Air Force 1 07, the b-ball OG that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.',
      categoryId: 3
  ),
  Product(
      id: 9,
      name: 'Retro GTS',
      urlName: 'https://i.imgur.com/V5Sa3og.png',
      price: 82,
      description: 'Off White Casual Hoddie in Fleece with contrast stripes on sleeves .',
      categoryId: 3
  ),
  Product(
      id: 10,
      name: 'Jewelry Earring',
      urlName: 'https://i.imgur.com/5jgtTtE.png',
      price: 250,
      description: 'Earring.',
      categoryId: 5
  ),
  Product(
      id: 11,
      name: 'Jewelry Neck',
      urlName: 'https://i.imgur.com/X2buJi7.png',
      price: 22,
      description: 'Neck.',
      categoryId: 5
  ),
  Product(
      id: 12,
      name: 'Jewelry Ring',
      urlName: 'https://i.imgur.com/5AypmOI.png',
      price: 12,
      description: 'Ring.',
      categoryId: 5
  )
];

var FAKE_PRODUCTS_COLORS = [
  ProductColor(color: Colors.grey, productId: 1),
  ProductColor(color: Colors.lightBlue, productId: 2),
  ProductColor(color: Colors.brown, productId: 2),
  ProductColor(color: Colors.greenAccent, productId: 2),
  ProductColor(color: Colors.purpleAccent, productId: 3),
  ProductColor(color: Colors.brown, productId: 3),
  ProductColor(color: Colors.grey, productId: 3),
  ProductColor(color: Colors.black, productId: 4),
  ProductColor(color: Colors.tealAccent, productId: 4),
  ProductColor(color: Colors.blueAccent, productId: 5),
  ProductColor(color: Colors.amberAccent, productId: 5),
  ProductColor(color: Colors.grey, productId: 6),
  ProductColor(color: Colors.black, productId: 6),
  ProductColor(color: Colors.indigo, productId: 6),
  ProductColor(color: Colors.blueAccent, productId: 7),
  ProductColor(color: Colors.red, productId: 7),
  ProductColor(color: Colors.green, productId: 7),
  ProductColor(color: Colors.deepOrange, productId: 8),
  ProductColor(color: Colors.black, productId: 8),
  ProductColor(color: Colors.lightBlue, productId: 8),
  ProductColor(color: Colors.red, productId: 9),
  ProductColor(color: Colors.blueGrey, productId: 9),
  ProductColor(color: Colors.black, productId: 9),
  ProductColor(color: Colors.lightGreen, productId: 10),
  ProductColor(color: Colors.redAccent, productId: 10),
  ProductColor(color: Colors.blueAccent, productId: 10),
  ProductColor(color: Colors.brown, productId: 11),
  ProductColor(color: Colors.redAccent, productId: 11),
  ProductColor(color: Colors.blueAccent, productId: 11),
  ProductColor(color: Colors.limeAccent, productId: 12),
  ProductColor(color: Colors.indigo, productId: 12),
];
