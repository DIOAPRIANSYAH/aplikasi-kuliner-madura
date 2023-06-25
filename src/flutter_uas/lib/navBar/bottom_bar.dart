import 'package:diamond_bottom_bar/diamond_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uas/pages/addFood.dart';
import 'package:flutter_uas/pages/home.dart';
import 'package:flutter_uas/pages/logout.dart';
import 'package:flutter_uas/pages/popular.dart';
import 'package:flutter_uas/pages/profil.dart';

class example extends StatefulWidget {
  const example({Key? key}) : super(key: key);

  @override
  State<example> createState() => _MyAppState();
}

class _MyAppState extends State<example> {
  int _selectedIndex = 0;
  late Widget _selectedWidget;

  @override
  void initState() {
    _selectedWidget = HomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diamond Bottom Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: _selectedWidget,
        bottomNavigationBar: DiamondBottomNavigation(
          itemIcons: const [
            Icons.home,
            Icons.category_rounded,
            Icons.account_box,
            Icons.logout_rounded,
          ],
          centerIcon: Icons.add_box,
          selectedIndex: _selectedIndex,
          onItemPressed: onPressed,
        ),
      ),
    );
  }

  void onPressed(index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        _selectedWidget = HomeScreen();
      } else if (index == 1) {
        _selectedWidget = PopularScreen();
      } else if (index == 2) {
        _selectedWidget = const MyApp();
      } else if (index == 3) {
        _selectedWidget = ProfileScreen();
      } else if (index == 4) {
        _selectedWidget = logOut();
      }
    });
  }
}
