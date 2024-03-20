import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spending_pad/view/colors.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      body: Center(
        child: Column(
          children: [
            Text('Spending Pad',
              style: TextStyle(
                color: white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}