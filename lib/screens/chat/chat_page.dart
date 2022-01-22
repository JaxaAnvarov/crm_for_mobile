import 'package:crm/core/constants/size_config.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Text(
          'Chat Page',
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(30.0),
          ),
        ),
      ),
    );
  }
}