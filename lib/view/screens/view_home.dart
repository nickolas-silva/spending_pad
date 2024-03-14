import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spending_pad/controllers/controller.dart';
import 'package:spending_pad/view/screens/teste.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller controller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text('Clicks: ${controller.count}')),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () { 
            Get.to(Teste());
          },
          child: const Text('Increment'),
        ),
      ),
    );
  }
}