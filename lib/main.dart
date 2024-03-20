import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spending_pad/view/screens/login.dart';
import 'package:spending_pad/view/screens/view_home.dart';

import 'view/screens/teste.dart';

void main() {
  runApp(const SpendingPad());
}

class SpendingPad extends StatelessWidget {
  const SpendingPad({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spending Pad',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      //home: Home(),
      getPages: [
        GetPage(name: '/login', page: () =>  Login()),
        GetPage(name: '/home', page: () => Home()),
        GetPage(name: '/teste', page: () => Teste()),
      ],
      initialRoute: '/login',
    );
  }
}
