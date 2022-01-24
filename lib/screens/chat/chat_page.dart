import 'dart:io';
import 'package:crm/core/constants/size_config.dart';
import 'package:crm/core/model/information_repository.dart';
import 'package:crm/screens/chat/blog/information_cubit.dart';
import 'package:crm/screens/chat/blog/informtion_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => InformationCubit(
        SampleInformationRepository(),
      ),
      child: Scaffold(
        appBar: appBar(),
        body: Column(
          children: [
            Expanded(
              child: BlocConsumer<InformationCubit, InformationState>(
                listener: (context, state) {
                  if (state is InformationError) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          state.errorInformation.toString(),
                        ),
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  if (state is InformationInitial) {
                    return Center(
                      child: Platform.isAndroid
                          ? const CircularProgressIndicator()
                          : const CupertinoActivityIndicator(),
                    );
                  } else if (state is InformationLoading) {
                    return Center(
                      child: Platform.isAndroid
                          ? const CircularProgressIndicator()
                          : const CupertinoActivityIndicator(),
                    );
                  } else if (state is InformationCompledet) {
                    return listView(state);
                  } else {
                    final error = state as InformationError;
                    debugPrint(error.errorInformation.toString());
                    return Center(
                      child: Text(
                        error.errorInformation.toString(),
                      ),
                    );
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  listView(InformationCompledet state) {
    return ListView.builder(
      itemCount: state.response.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Text(
            state.response[index].userId.toString(),
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(16.0),
              fontWeight: FontWeight.w400,
            ),
          ),
          title: Text(
            '15.12.2021, 14:35:51',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: getProportionateScreenWidth(24.0),
            ),
          ),
          trailing: Text(
            '2',
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(16.0),
              fontWeight: FontWeight.w400,
            ),
          ),
        );
      },
    );
  }

  appBar() {
    return AppBar(
      backgroundColor: const Color(0xFF0E0B25),
      title: Text(
        'Order History',
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
}
