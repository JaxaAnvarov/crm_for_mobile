import 'package:crm/core/constants/size_config.dart';
import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  late String text;
  late double size;
  late Color color;
  late FontWeight width;
  MyTextWidget({
    Key? key,
    required this.color,
    required this.size,
    required this.text,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Text(
      text.toString(),
      style: TextStyle(
        color: color,
        fontSize: getProportionateScreenWidth(size),
        fontWeight: width,
      ),
    );
  }
}
