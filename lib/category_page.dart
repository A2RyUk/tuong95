import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson1/category_item.dart';
import 'package:lesson1/models/fake_data.dart';
import 'package:lesson1/widgets/bottomnavigationbar.dart';
import 'package:lesson1/tabbar_page/taball.dart';
import 'package:lesson1/tabbar_page/tabaccesory.dart';
import 'package:lesson1/tabbar_page/tabfurniture.dart';
import 'package:lesson1/tabbar_page/tabhoddie.dart';
import 'package:lesson1/tabbar_page/tabshoes.dart';

class CategoriesPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // ta sẽ sử dụng tab để di chuyển giữa các màn hình category
    //để làm việc với tab ta cần tạo đối tượng tabController khởi tạo từ DefaultTabController(tabController mặc định)
    /* final tabController = new DefaultTabController(
        length: 5,      //ta có 5 tab để length là 5
        child: Scaffold(
          //phần con của tab ta dùng scaffold
          //từng tab sẽ gói trong scaffold, và 5 nút ở phần bottom trong appbar
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text('Our Products', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            bottom: TabBar(     //khởi tạo tabbar với thuộc tính tab là mảng chứ 5 nút bấm
              tabs: FAKE_CATEGORIES.map((e) => CategoryItem(category: e)).toList(),
              isScrollable: true,
            ),
          ),
        )
    ); */
    final Size size = MediaQuery.of(context).size;
    /*return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.all(15),
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
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.symmetric(vertical: 7)
            ),
            Container(
              padding: EdgeInsets.only(left: 40),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Our Products', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 7)),
                  DefaultTabController(
                      length: 5,
                      child: Column(
                        children: [
                          TabBar(
                              indicatorColor: Colors.white30,
                              tabs: FAKE_CATEGORIES.map((e) => CategoryItem(category: e)).toList(),
                              isScrollable: true
                          ),

                        ],
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
       onPressed: () {  },
        child: Icon(Icons.menu),
       backgroundColor: Colors.orange,
      ),
      bottomNavigationBar: BottomNavigationBarProduct()
    );*/
    return  Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
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
      body: DefaultTabController(
          length: 5,
          child: Container(
            color: Colors.grey[100],
            padding: EdgeInsets.all(15),
            child: Scaffold(
              backgroundColor: Colors.grey[100],
              appBar: AppBar(
                title: Text('Our Products', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Colors.black),),
                elevation: 0,
                backgroundColor: Colors.grey[100],
                bottom: TabBar(     //khởi tạo tabbar với thuộc tính tab là mảng chứ 5 nút bấm
                  tabs: FAKE_CATEGORIES.map((e) => CategoryItem(category: e)).toList(),
                  isScrollable: true,
                  indicatorColor: Colors.grey[200],
                  indicatorWeight: 0.1,
                ),
              ),
              body: TabBarView(
                children: [
                  TabAll(),
                  TabFurniture(),
                  TabShoes(),
                  TabHoddie(),
                  TabAccessory()
                ],
              ),
            ),
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.menu),
        backgroundColor: Colors.orange,
      ),
      bottomNavigationBar: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 6,
            child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                      MaterialButton(
                          minWidth: 40,
                          onPressed: (){

                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.home,
                                color: Colors.grey,
                              )
                            ],
                          )
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                      MaterialButton(
                          minWidth: 40,
                          onPressed: (){

                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.health_and_safety,
                                color: Colors.grey,
                              )
                            ],
                          )
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                          minWidth: 40,
                          onPressed: (){

                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.task,
                                color: Colors.grey,
                              )
                            ],
                          )
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                      MaterialButton(
                          minWidth: 40,
                          onPressed: (){

                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.account_circle_rounded,
                                color: Colors.grey,
                              )
                            ],
                          )
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
    throw UnimplementedError();
  }
}

