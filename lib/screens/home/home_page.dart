import 'package:crm/core/constants/size_config.dart';
import 'package:crm/service/input_services.dart';
import 'package:flutter/material.dart';

class HomaPage extends StatefulWidget {
  const HomaPage({Key? key}) : super(key: key);

  @override
  State<HomaPage> createState() => _HomaPageState();
}

class _HomaPageState extends State<HomaPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20.0),
              vertical: getProportionateScreenHeight(15.0),
            ),
            child: TextFormField(
              controller: InputServices.search,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    getProportionateScreenWidth(10.0),
                  ),
                ),
                prefixIcon: IconButton(
                  icon: const Icon(
                    Icons.search,
                  ),
                  onPressed: () {
                    debugPrint("Search");
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20.0),
                    vertical: getProportionateScreenWidth(20.0),
                  ),
                  child: Container(
                    height: getProportionateScreenHeight(180.0),
                    width: getProportionateScreenWidth(350.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        getProportionateScreenWidth(10.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: getProportionateScreenWidth(8.0),
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: getProportionateScreenHeight(20.0),
                              horizontal: getProportionateScreenWidth(10.0)),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: getProportionateScreenWidth(63.0),
                                width: getProportionateScreenWidth(63.0),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFC4C4C4),
                                  borderRadius: BorderRadius.circular(
                                    getProportionateScreenWidth(10.0),
                                  ),
                                ),
                              ),
                              SizedBox(width: getProportionateScreenWidth(5.0)),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: getProportionateScreenWidth(10.0),
                                      right: getProportionateScreenWidth(10.0),
                                    ),
                                    alignment: Alignment.centerLeft,
                                    width: getProportionateScreenWidth(150.0),
                                    color: Colors.blue,
                                    child: Text(
                                      '985021-2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                            getProportionateScreenWidth(16.0),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'explain the benefits to management\nand clients and implement design...',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFFD0D2DE),
                                      fontWeight: FontWeight.w600,
                                      fontSize:
                                          getProportionateScreenWidth(12.0),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  appBar() {
    return AppBar(
      backgroundColor: const Color(0xFF0E0B25),
      title: Text(
        'Products',
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
    );
  }

  @override
  void dispose() {
    super.dispose();
    InputServices.search.dispose();
  }
}
