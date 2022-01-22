import 'package:crm/core/constants/size_config.dart';
import 'package:flutter/material.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Text(
          'Information Page',
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(30.0),
          ),
        ),
      ),
    );
  }
}
