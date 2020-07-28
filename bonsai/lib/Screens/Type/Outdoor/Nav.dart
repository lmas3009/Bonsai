import 'package:bonsai/Screens/Type/Menu/menu.dart';
import 'package:bonsai/Screens/Type/Outdoor/cart.dart';
import 'package:bonsai/Screens/Type/Outdoor/order.dart';
import 'package:bonsai/Screens/Type/Outdoor/outdoor.dart';
import 'package:flutter/material.dart';
import 'package:bonsai/Screens/Type/Indoor/indoor.dart';
import 'package:bottom_ani_nav_bar/bottom_ani_nav_bar.dart';

class Navout extends StatefulWidget {
  Navout({Key key}) : super(key: key);

  @override
  _NavoutState createState() => _NavoutState();
}

class _NavoutState extends State<Navout> {
 int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(color: Colors.blueAccent);
    return Scaffold(
          body: SafeArea(
            top: false,
            child: IndexedStack(index: _currentIndex, children: [
              Outdoor(),
              Order(),
              Cart(),
              Menu(),
              
            ]),
          ),
          bottomNavigationBar: BottomAniNavBar(
              unselectedItemColor: Colors.red,
              currentIndex: _currentIndex,
              onTap: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text(
                    'Home',
                    style: textStyle,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.local_shipping),
                  title: Text(
                    'Order',
                    style: textStyle,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  title: Text(
                    'Cart',
                    style: textStyle,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu),
                  title: Text(
                    'Menu',
                    style: textStyle,
                  ),
                ),
              ]),
        );
  }
}