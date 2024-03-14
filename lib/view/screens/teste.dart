import 'package:flutter/material.dart';

class Teste extends StatelessWidget {
  const Teste({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teste'),
      ),
      body: const Center(
        child: Text('Teste'),
      ),
    );
  }
}