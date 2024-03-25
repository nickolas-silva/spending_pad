import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:spending_pad/controllers/login_controller.dart';
import 'package:spending_pad/view/utils/colors.dart';
import 'package:spending_pad/view/pages/login/widgets/login_form.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 25),
                SizedBox(
                  height: 100,
                  width: 250,
                  child: Image.asset('assets/images/Logo.png'),
                ),
        
                const SizedBox(height: 25),
                
                Text('Spending Pad',
                  style: TextStyle(
                    color: white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
        
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 50),
                  child: LoginForm(controller: Get.put(LoginController())),
                ),
        
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: lightBlue,
                      padding: const EdgeInsets.all(15),
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      if(controller.login()){
                        Get.toNamed('/home');
                      }
                    },
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        color: white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                  ),
                )
        
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}