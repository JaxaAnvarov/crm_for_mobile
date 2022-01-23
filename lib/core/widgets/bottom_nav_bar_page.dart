import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:crm/provider/bottom_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyBottomNavBar extends StatelessWidget {
  MyBottomNavBar({
    Key? key,
    required this.model,
  }) : super(key: key);
  BottomProvider model;

  @override
  Widget build(BuildContext context) {
    var _context = context.watch<BottomProvider>();
    return BottomNavyBar(
      backgroundColor: const Color(0xFF0E0B25),
      selectedIndex: _context.currentTab,
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          title: const Text('Home'),
          icon: const Icon(Icons.home_outlined),
          inactiveColor: Colors.white,
          activeColor: Colors.white,
        ),
        BottomNavyBarItem(
          title: const Text('History'),
          icon: const Icon(Icons.bookmark_outline),
          inactiveColor: Colors.white,
          activeColor: Colors.white,
        ),
        BottomNavyBarItem(
          title: const Text('Message'),
          icon: const Icon(Icons.messenger_sharp ),
          inactiveColor: Colors.white,
          activeColor: Colors.white,
        ),
      ],
      onItemSelected: (int ind) {
        model.currentTab = ind;
      },
    );
  }
}
