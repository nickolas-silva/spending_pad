import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:spending_pad/controllers/home_controller.dart';
import 'package:spending_pad/view/utils/colors.dart';
import 'package:spending_pad/view/utils/drawer.dart';

class HomePage extends GetView<HomeController> {
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
                        '${controller.total}',
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

                  //Entradas e Saidas
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)
                        )
                      ),
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 100,
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: white,
                                  border: Border.all(
                                    color: lightGrey,
                                    width: 1.5
                                  )
                                ),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  'Entradas',
                                  style: TextStyle(
                                    
                                    color: green,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                    
                              Container(
                                width: 100,
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: white,
                                  border: Border.all(
                                    color: lightGrey, width: 1.5
                                  )
                                ),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  'Saídas',
                                  style: TextStyle(
                                    color: red,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              )
                            ],
                          ),

                          const SizedBox(height: 10),
                    
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_upward,
                                    color: green,
                                  ),
                                  const SizedBox(width: 10,),
                                  Text(
                                    '1.000,00',
                                    style: TextStyle(
                                        color: green,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  
                                ],
                              ),

                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_downward,
                                    color: red,
                                  ),
                                  const SizedBox(width: 10,),
                                  Text(
                                    '1.000,00',
                                    style: TextStyle(
                                        color: red,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                  


                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: white,

                ),
                child: Column(
                  children: [
                    
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Mais Detalhes',
                        style: TextStyle(
                          color: lightGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    
                  ]
                )
              ),
            )
          ],
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: darkBlue,
        child: const Icon(Icons.add, color: Colors.white,),
      )
    );
  }
}
