import 'package:flutter/material.dart';
import 'package:spending_pad/view/utils/colors.dart';
import 'package:spending_pad/view/utils/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          title: Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                'assets/images/Logo.png',
                width: 80,
                height: 40,
              )
            ),
          backgroundColor: darkBlue,
        ),
        drawer: const DrawerItens(),
        body: Column(
          children: [
            Container(
              height: 210,
              width: double.infinity,
              decoration: BoxDecoration(
                color: darkBlue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  const SizedBox(height: 10),

                  Text(
                    'Total Disponível',
                    style: TextStyle(
                        color: green,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.monetization_on_outlined,
                        color: lightBlue,
                      ),
                      Text(
                        '1.000,00',
                        style: TextStyle(
                          color: white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),

                  Text(
                    '10, Agosto, 2024',
                    style: TextStyle(
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  


                ],
              ),
            )
          ],
        ));
  }
}
