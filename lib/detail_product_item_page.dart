import 'package:flutter/material.dart';
import 'package:lesson1/models/product.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lesson1/colors_item.dart';

/*class DetailProductItem extends StatelessWidget{

  Product product;
  DetailProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[300],
          iconTheme: IconThemeData(           //doi mau back button AppBar
              color: Colors.black
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(8),
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.shopping_cart_outlined, color: Colors.black,),
                  onPressed: () {  },
                ),
              ),
            )
          ],
        ),
        body: Container(
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                FadeInImage.assetNetwork(
                    height: 300,
                    width: 300,
                    placeholder: 'assets/images/loading.gif',
                    image: product.urlName),
                Container(
                  height: size.height * 0.44,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(70),
                          topLeft: Radius.circular(70)
                      )
                  ),
                  child: Padding(
                      padding: EdgeInsets.all(40),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(product.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                          ),
                          Row(children: [
                            Padding(padding: EdgeInsets.only(right: 260)),
                            Text('\$${this.product.price.toString()}', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                          ],
                          ),
                          Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
                          Align(
                            child: Text(product.description, style: TextStyle(fontSize: 16),),
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: 30)),
                          Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white
                                ),
                                child: Icon(Icons.favorite_border, color: Colors.orange,),
                              ),
                              Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
                              SizedBox(
                                child: MaterialButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                      side: BorderSide(
                                        width: 0,
                                      )
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(padding: EdgeInsets.only(right: 50)),
                                        Icon(Icons.shopping_cart_outlined, color: Colors.white,),
                                        Text('Add To My Cart', style: TextStyle(color: Colors.white),)

                                      ],
                                    ),
                                    color: Colors.orange,
                                    onPressed: (){

                                    }
                                ),
                                height: 50,
                                width: 250,
                              )
                            ],
                          )
                        ],
                      )
                  ),
                )
              ],
            )
        ),
    );
    throw UnimplementedError();
  }
}*/

class DetailProductItem extends StatefulWidget{

  Product product;
  DetailProductItem({required this.product});

  @override
  State<StatefulWidget> createState() {
    return _DetailProductItem();
  }
}

class _DetailProductItem extends State<DetailProductItem> with WidgetsBindingObserver{
  int quantity = 1;
  int review = 0;

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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[300],
        iconTheme: IconThemeData(           //doi mau back button AppBar
            color: Colors.black
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.shopping_cart_outlined, color: Colors.black,),
                onPressed: () {  },
              ),
            ),
          )
        ],
      ),
      body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 50)),
                  ColorsItem(product: widget.product,),
                  FadeInImage.assetNetwork(
                      height: 300,
                      width: 300,
                      placeholder: 'assets/images/loading.gif',
                      image: widget.product.urlName),
                ],
              ),
              Container(
                height: size.height * 0.44,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(70),
                        topLeft: Radius.circular(70)
                    )
                ),
                child: Padding(
                    padding: EdgeInsets.all(40),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(widget.product.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                        ),
                        Row(children: [
                          RatingBar.builder(
                              itemSize: 15,
                              minRating: 1,
                              itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                              onRatingUpdate: (rating){
                                setState(() {
                                  review++;
                                });
                              }
                          ),
                          Padding(padding: EdgeInsets.only(right: 5)),
                          Text('${review} Reviews', style: TextStyle(fontSize: 14,color: Colors.black54),),
                          Padding(padding: EdgeInsets.only(right: 120)),
                          Text('\$${widget.product.price.toString()}', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                        ],
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(widget.product.description, style: TextStyle(fontSize: 14),),
                          ),
                        ),
                        Row(
                          children: [
                            Text('Quantity', style: TextStyle(fontSize: 15, color: Colors.grey),),
                            Padding(padding: EdgeInsets.only(right: 160)),
                            Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Icon(
                                            Icons.remove,
                                            size: 20,
                                            color: Colors.black54,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(5)),
                                            color: Colors.grey[400]
                                        ),
                                      ),
                                      onTap: (){
                                        setState(() {
                                          quantity--;
                                        });
                                      },
                                    ),
                                    Container(
                                      width: 30,
                                      height: 23,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text('${quantity}', style: TextStyle(fontSize: 15, color: Colors.black54),),
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          color: Colors.grey[400]
                                      ),
                                    ),
                                    InkWell(
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Icon(
                                            Icons.add,
                                            size: 20,
                                            color: Colors.black54,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(5)),
                                            color: Colors.grey[400]
                                        ),
                                      ),
                                      onTap: (){
                                        setState(() {
                                          quantity++;
                                        });
                                      },
                                    ),
                                  ],
                                )
                            ),
                            Padding(padding: EdgeInsets.only(right: 10)),
                          ],
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 4)),
                        BottomAppBar(
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white
                                ),
                                child: Icon(Icons.favorite_border, color: Colors.orange,),
                              ),
                              Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
                              SizedBox(
                                child: MaterialButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        side: BorderSide(
                                          width: 0,
                                        )
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(padding: EdgeInsets.only(right: 50)),
                                        Icon(Icons.shopping_cart_outlined, color: Colors.white,),
                                        Text('Add To My Cart', style: TextStyle(color: Colors.white),)

                                      ],
                                    ),
                                    color: Colors.orange,
                                    onPressed: (){

                                    }
                                ),
                                height: 50,
                                width: 250,
                              )
                            ],
                          ),
                          elevation: 0,
                          color: Colors.grey[100],
                        )
                      ],
                    )
                ),
              ),
            ],
          )
      ),
    );
  }
}