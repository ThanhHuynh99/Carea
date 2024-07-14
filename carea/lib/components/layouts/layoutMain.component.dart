import 'package:carea/constants/colors.constant.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../views/home/home.dart';
import '../../views/profile/profile.view.dart';
import '../../views/spash/started.view.dart';

class LayoutMain extends StatefulWidget {
  final int? selectIndex;

  const LayoutMain({super.key, this.selectIndex});

  @override
  State<LayoutMain> createState() => _LayoutMainState();
}

class _LayoutMainState extends State<LayoutMain> {
  int _selectedIndex = 0;

  late List<Widget> widgetOptions = <Widget>[
    const Home(),
    const Started(),
    const Home(),
    const Home(),
    const ProfileScreen(),
  ];

  onItemTapped(int index) async {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    if (widget.selectIndex != null) {
      _selectedIndex = widget.selectIndex!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home_2),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.shopping_cart),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(IonIcons.chatbubble_ellipses),
            label: "Inbox",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.wallet_2),
            label: "Wallet",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.profile_tick),
            label: "Profile",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: Colors.white,
        iconSize: 20,
        unselectedItemColor: const Color(0xFF9e9e9e),
        selectedItemColor: Color(COLOR.dark),
        unselectedLabelStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, height: 1.5),
        selectedLabelStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.w700, height: 1.5),
      ),
    );
  }
}
