import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:nike_project/widgets/favourite_screen.dart';
import 'package:nike_project/widgets/home_screen.dart';
import 'package:nike_project/widgets/notification_screen.dart';
import 'package:nike_project/widgets/profile_screen.dart';
import 'package:nike_project/widgets/shopping_screeen.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({Key? key}) : super(key: key);

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final items = const [
    Icon(
      IconlyBold.home,
      size: 30,
    ),
    Icon(
      Icons.favorite_border_rounded,
      size: 30,
    ),
    Icon(
      Icons.shopping_basket,
      size: 30,
    ),
    Icon(
      Icons.notifications,
      size: 30,
    ),
    Icon(
      Icons.person,
      size: 30,
    )
  ];

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selctedIndex) {
          setState(() {
            index = selctedIndex;
          });
        },
        height: 70,
        backgroundColor: Colors.transparent,

        // animationCurve: ,
      ),
      body: Container(
          color: Colors.blue,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getSelectedWidget(index: index)),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const HomePage();
        break;
      case 1:
        widget = const Favourite();
        break;
      case 2:
        widget = const Shopping();
        break;
      case 3:
        widget = const NotificationScreen();
        break;

      default:
        widget = const Profile();
        break;
    }
    return widget;
  }
}
