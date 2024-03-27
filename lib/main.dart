import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spending_pad/bindings/home_binding.dart';
import 'package:spending_pad/bindings/login_binding.dart';
import 'package:spending_pad/view/pages/home/home_page.dart';
import 'package:spending_pad/view/pages/login/login_page.dart';

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
      
      getPages: [
        GetPage(
          name: '/login',
          page: () =>  const LoginPage(),
          binding: LoginBinding()
        ),
        GetPage(
          name: '/home', 
          page: () => const HomePage(), 
          binding: HomeBinding()
        )
      ],
      initialRoute: '/home',
    );
  }
}
