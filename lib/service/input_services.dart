import 'package:flutter/cupertino.dart';

class InputServices extends ChangeNotifier {
  static final TextEditingController _emailController = TextEditingController();
  static final TextEditingController _passwordController =
      TextEditingController();
  static final TextEditingController _searchController =
      TextEditingController();

  static TextEditingController get email => _emailController;
  static TextEditingController get password => _passwordController;
  static TextEditingController get search => _searchController;
}
