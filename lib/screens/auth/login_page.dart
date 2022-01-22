import 'package:crm/core/components/my_input_field.dart';
import 'package:crm/core/components/my_text_widget.dart';
import 'package:crm/core/constants/size_config.dart';
import 'package:crm/service/input_services.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool parolni_korish = false;
  bool value = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(36.0)),
          Container(
            margin: EdgeInsets.only(
              right: getProportionateScreenWidth(140.0),
              left: getProportionateScreenWidth(22.0),
            ),
            width: getProportionateScreenWidth(162.0),
            child: MyTextWidget(
              color: Colors.black,
              size: 19.0,
              text: 'Welcome again !',
              width: FontWeight.w300,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(26.0)),
          Container(
            margin: EdgeInsets.only(
              right: getProportionateScreenWidth(145.0),
              left: getProportionateScreenWidth(23.0),
            ),
            width: getProportionateScreenWidth(158.0),
            child: MyTextWidget(
              color: Colors.black,
              size: 25.0,
              text: 'Sing In',
              width: FontWeight.w500,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(5.0)),
          Container(
            margin: EdgeInsets.only(
              right: getProportionateScreenWidth(14.0),
              left: getProportionateScreenWidth(22.0),
            ),
            width: getProportionateScreenWidth(288.0),
            child: MyTextWidget(
              color: Colors.black,
              size: 16.0,
              text: 'Countune with your account',
              width: FontWeight.w400,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              right: getProportionateScreenWidth(20.0),
              top: getProportionateScreenHeight(42.0),
            ),
            width: getProportionateScreenWidth(258.0),
            child: MyTextWidget(
              color: Colors.black,
              size: getProportionateScreenWidth(16.0),
              width: FontWeight.w400,
              text: 'Email',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(22.0),
            ),
            child: MyInputField(
              controller: InputServices.email,
              hingText: 'Enter your email',
              radius: 10.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              right: getProportionateScreenWidth(20.0),
              top: getProportionateScreenHeight(42.0),
            ),
            width: getProportionateScreenWidth(258.0),
            child: MyTextWidget(
              color: Colors.black,
              size: getProportionateScreenWidth(16.0),
              width: FontWeight.w400,
              text: 'Password',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(22.0),
            ),
            child: TextFormField(
              obscureText: !parolni_korish,
              controller: InputServices.password,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    getProportionateScreenWidth(10.0),
                  ),
                ),
                hintText: "Enter your password",
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(
                      () {
                        parolni_korish = !parolni_korish;
                      },
                    );
                  },
                  icon: parolni_korish
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                ),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(23.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.black,
                    value: value,
                    onChanged: (v) {
                      setState(() {
                        value = !value;
                      });
                    },
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(107.0),
                    child: Text(
                      'Remember me',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(12.0),
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    InputServices.password.clear();
                  });
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: getProportionateScreenWidth(12.0),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(38.0)),
          InkWell(
            child: Container(
              alignment: Alignment.center,
              height: getProportionateScreenHeight(57.0),
              width: getProportionateScreenWidth(279.0),
              decoration: BoxDecoration(
                color: const Color(0xFF0E0B25),
                borderRadius: BorderRadius.circular(
                  getProportionateScreenWidth(10.0),
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getProportionateScreenWidth(16.0),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(31.0)),
          SizedBox(
            width: getProportionateScreenWidth(210.0),
            child: Row(
              children: [
                Text(
                  'Don’y have an Account ?',
                  style: TextStyle(
                    color: const Color(0xFF7D7D7D),
                    fontSize: getProportionateScreenWidth(12.0),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(3.0)),
                Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(12.0),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    InputServices.email.dispose();
    InputServices.password.dispose();
  }
}
