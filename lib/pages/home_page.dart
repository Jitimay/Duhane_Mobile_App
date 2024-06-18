import 'package:duhane/pages/details.dart';
import 'package:duhane/widgets/widgets_support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool ice_cream = false, pizza = false, salad = false, burger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello Jitimay",
                    style: AppWidget.boldTextFeildStyle(),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Delicious Food",
                style: AppWidget.HeadTextFeildStyle(),
              ),
              Text(
                "Discover and Get Great Food",
                style: AppWidget.LightTextFeildStyle(),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: showItem(),
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Details()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              children: [
                                Image.asset(
                                  "images/salad2.png",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "Salade Bolonieses",
                                  style: AppWidget.semiBoldTextFeildStyle(),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Fresh and Healthy",
                                  style: AppWidget.LightTextFeildStyle(),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "55,000 BIF",
                                  style: AppWidget.semiBoldTextFeildStyle(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            children: [
                              Image.asset(
                                "images/salad2.png",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Salade Bolonieses",
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Fresh and Healthy",
                                style: AppWidget.LightTextFeildStyle(),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "55,000 BIF",
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Column(
                  children: [
                    buildFoodItem(context, "Kirundo Salad", "I Salad Ziryoshe", "67,000 BIF"),
                    SizedBox(height: 20),
                    buildFoodItem(context, "Another Salad", "I Salad Ziryoshe", "67,000 BIF"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFoodItem(BuildContext context, String title, String subtitle, String price) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "images/salad2.png",
              height: 120,
              width: 120,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    title,
                    style: AppWidget.semiBoldTextFeildStyle(),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    subtitle,
                    style: AppWidget.LightTextFeildStyle(),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    price,
                    style: AppWidget.semiBoldTextFeildStyle(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              ice_cream = true;
              pizza = false;
              salad = false;
              burger = false;
            });
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                    color: ice_cream ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(8),
                child: Image.asset(
                  "images/ice-cream.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              ice_cream = false;
              pizza = true;
              salad = false;
              burger = false;
            });
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                    color: pizza ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(8),
                child: Image.asset(
                  "images/pizza.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              ice_cream = false;
              pizza = false;
              salad = false;
              burger = true;
            });
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                    color: burger ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(8),
                child: Image.asset(
                  "images/burger.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              ice_cream = false;
              pizza = false;
              salad = true;
              burger = false;
            });
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                    color: salad ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(8),
                child: Image.asset(
                  "images/salad.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
