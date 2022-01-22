import 'package:flutter/cupertino.dart';

class InputServices extends ChangeNotifier {
  static final TextEditingController _emailController = TextEditingController();
  static final TextEditingController _passwordController =
      TextEditingController();

  static TextEditingController get email => _emailController;
  static TextEditingController get password => _passwordController;
}
