import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson1/models/product.dart';
import 'package:lesson1/detail_product_item_page.dart';
import 'package:lesson1/colors_item_row.dart';

class ProductItem extends StatelessWidget{
  Product product;
  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 350,
      color: Colors.grey[100],
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 300,
                  height: 220,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
              Positioned(
                  top: 10.0,
                  child: Center(
                    child: FadeInImage.assetNetwork(
                        height: 150,
                        width: 150,
                        placeholder: 'assets/images/loading.gif',
                        image: product.urlName),
                  )
              ),
              Positioned(
                  top: 166,
                  left: 8,
                  child: ColorsRow(product: product,)
              ),
              Positioned(
                  top: 188,
                  left: 10,
                  child: Text(
                    product.name,
                    style: TextStyle(fontSize: 18),
                  )
              ),
              Positioned(
                  top: 212,
                  left: 10,
                  child: Text(
                    '\$${product.price.toString()}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
              ),
              Positioned(
                  top: 198,
                  left: 120,
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => DetailProductItem(product: product,)
                        )
                      );
                    },
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(45)
                      ),
                      child: Center(
                        child: Icon(Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
              )
            ],
          ),
    );
    throw UnimplementedError();
  }
}