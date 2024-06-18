import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:duhane/pages/home_page.dart';
import 'package:duhane/pages/order.dart';
import 'package:duhane/pages/profile.dart';
import 'package:duhane/pages/wallet.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;
  late List<Widget> pages;
  late Widget currentPage;
  late HomePage homePage;
  late Profile profile;
  late Order order;
  late Wallet wallet;
  @override

  void initState(){
    homePage = HomePage();
    profile = Profile();
    order = Order();
    wallet = Wallet();

    pages = [homePage, profile, order, wallet];
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index){
          currentTabIndex = index;
        },
        items:const [
        Icon(
          Icons.home_outlined,
          color: Colors.white,
        ),
        Icon(
          Icons.shopping_bag_outlined,
          color: Colors.white,
        ),
        Icon(
          Icons.wallet_outlined,
          color: Colors.white,
        ),
        Icon(
          Icons.person_outlined,
          color: Colors.white,
        )
      ],),
      body: pages[currentTabIndex],
    );
  }
}
