import 'package:crm/screens/chat/chat_page.dart';
// import 'package:crm/screens/chat/information_page.dart';
import 'package:crm/screens/home/home_page.dart';
import 'package:crm/screens/informations/information_page.dart';
import 'package:flutter/material.dart';

class BottomProvider extends ChangeNotifier {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomaPage(),
    const ChatPage(),
    const InformationPage()
  ];

  set currentTab(int tab) {
    this._currentIndex = tab;
    notifyListeners();
  }

  int get currentTab => this._currentIndex;
  get currentScreens => this._screens[this._currentIndex];

  onTap(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
