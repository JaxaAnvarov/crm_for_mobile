import 'package:crm/core/constants/size_config.dart';
import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  MyInputField({
    Key? key,
    required this.controller,
    required this.radius,
    required this.hingText,
  }) : super(key: key);

  TextEditingController controller;
  double radius;
  String hingText;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            getProportionateScreenWidth(radius),
          ),
        ),
        hintText: hingText.toString(),
      ),
    );
  }
}
