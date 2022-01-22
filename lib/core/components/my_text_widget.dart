import 'package:crm/core/constants/size_config.dart';
import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  late String text;
  late double size;
  late Color color;
  MyTextWidget({
    Key? key,
    required this.color,
    required this.size,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Text(
      text.toString(),
      style: TextStyle(
        color: color,
        fontSize: getProportionateScreenWidth(size),
      ),
    );
  }
}
