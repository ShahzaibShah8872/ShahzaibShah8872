import 'dart:html';

import 'package:CoffeeAppUI/food_data.dart';
import 'package:CoffeeAppUI/widgets/food_item.dart';
import 'package:flutter/material.dart';
import 'package:CoffeeAppUI/NavDrawer.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(


      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text('FOOD APP',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.brown,
      ),
      backgroundColor: Colors.brown,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 40,
                width: 40,
                child: Image.asset("assets/images/log.png"),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Menu Card",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xffe5e5e5),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 2,
                    color: Colors.black12,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 40,
                      width: 30,
                      child: Image.asset("assets/images/search.png"),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 8,
                      ),
                      child: Text(
                        "Search",
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 25,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 20),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2.5 / 3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (ctx, idx) => CoffeeItem(
                      index: idx,
                    ),
                    itemCount: coffee_list.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
