import 'package:flutter/material.dart';
import 'package:hidden_drawer/pages/homepage.dart';
import 'package:hidden_drawer/pages/settings.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {

  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'HomePage',
            baseStyle: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),
            selectedStyle: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
              colorLineSelected: Colors.white
      ), HomePage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'Settings',
            baseStyle: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),
            selectedStyle: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
            colorLineSelected: Colors.white
          ), Settings()),
    ];

  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        screens: _pages,
        backgroundColorMenu: Colors.orange.shade500,
        initPositionSelected: 0,
      slidePercent: 60,
    );
  }
}
