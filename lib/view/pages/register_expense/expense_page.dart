import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spending_pad/controllers/home_controller.dart';
import 'package:spending_pad/view/utils/colors.dart';

class RegisterExpensePage extends GetView<HomeController> {
  const RegisterExpensePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      appBar: AppBar(
        title: Text('Registrar Despesa', style: TextStyle(color: white),),
        centerTitle: true,
        backgroundColor: darkBlue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: white,),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: controller.expenseNameController,
                style: TextStyle(color: white),
                decoration: InputDecoration(
                  labelText: 'Título da Despesa',
                  labelStyle: TextStyle(color: white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controller.expenseValueController,
                style: TextStyle(color: white),
                decoration: InputDecoration(
                  labelText: 'Valor da Despesa',
                  labelStyle: TextStyle(color: white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: white),
                  ),
                  
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  controller.addExpense();
                  Get.back();
                  controller.update();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(white),
                ),
                child: Text('Registrar', style: TextStyle(color: darkBlue),),
              ),
            ],
          ),
        )
      )
    );
  }
}