import 'package:crm/core/constants/size_config.dart';
import 'package:flutter/material.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0E0B25),
        title: Text(
          'Message',
          style: TextStyle(
            color: Colors.white,
            fontSize: getProportionateScreenWidth(20.0),
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Container(
            height: getProportionateScreenWidth(38.0),
            width: getProportionateScreenWidth(38.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF262338),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.settings_outlined,
                color: Colors.white,
              ),
              onPressed: () => debugPrint("settings"),
            ),
          ),
          SizedBox(width: getProportionateScreenWidth(10.0)),
          Container(
            height: getProportionateScreenWidth(38.0),
            width: getProportionateScreenWidth(38.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF262338),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.login_rounded,
                color: Colors.white,
              ),
              onPressed: () => debugPrint("settings"),
            ),
          ),
          SizedBox(width: getProportionateScreenWidth(15.0)),
        ],
      ),
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
