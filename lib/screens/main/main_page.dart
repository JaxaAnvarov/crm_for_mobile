import 'package:crm/core/constants/size_config.dart';
import 'package:crm/core/widgets/bottom_nav_bar_page.dart';
import 'package:crm/provider/bottom_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ChangeNotifierProvider<BottomProvider>(
      create: (context) => BottomProvider(),
      child: Consumer<BottomProvider>(
        builder: (context, model, child) => Scaffold(
          body: model.currentScreens,
          bottomNavigationBar: MyBottomNavBar(model: model),
        ),
      ),
    );
  }
}
