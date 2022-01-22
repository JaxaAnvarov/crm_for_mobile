import 'package:crm/core/components/my_text_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            child: MyTextWidget(
              color: Colors.black,
              size: 19.0,
              text: 'Welcome again !',
            ),
          ),
        ],
      ),
    );
  }
}