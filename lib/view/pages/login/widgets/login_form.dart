import 'package:flutter/material.dart';
import 'package:spending_pad/controllers/login_controller.dart';
import 'package:spending_pad/view/utils/colors.dart';
import 'package:validatorless/validatorless.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key, required this.controller});

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: lightBlue,
                  ),
                )
              ),

              const SizedBox(height: 8),
              
              TextFormField(
                decoration: const InputDecoration(
                  
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                onChanged: controller.setEmail,
                validator: Validatorless.multiple(
                  [
                    Validatorless.required('Campo obrigatório'),
                    Validatorless.email('Email inválido'),
                  ]
                ),
              ),

              const SizedBox(height: 30),

              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                  'Senha',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: lightBlue,
                  ),
                )
              ),

              const SizedBox(height: 8),

              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
                onChanged: controller.setPassword,
                validator: Validatorless.multiple([
                  Validatorless.required('Campo obrigatório'),
                  Validatorless.min(6, 'Senha muito curta'),
                ]),
              ),


            ],
          ),
        ));
  }
}
