import 'package:crm/core/constants/size_config.dart';
import 'package:flutter/material.dart';

class HomaPage extends StatelessWidget {
  const HomaPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(30.0),
          ),
        ),
      ),
    );
  }
}