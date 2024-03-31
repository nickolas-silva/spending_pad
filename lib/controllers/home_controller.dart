import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spending_pad/model/expense.dart';

class HomeController extends GetxController{
  var total = 0.obs;
  var spends = 0.obs;
  var entradas = 0.obs;

  var teste = '';

  TextEditingController expenseNameController = TextEditingController();
  TextEditingController expenseValueController = TextEditingController();

  final _expenses = StreamController<List<Expense>>();

  Stream<List<Expense>> get exStream => _expenses.stream;

  List<Expense> expenses = [];
  
  void addExpense(){
    Expense newExpense = Expense(
      title: expenseNameController.text,
      value: double.parse(expenseValueController.text),
      date: DateTime.now(),
      isDebit: true
    );
    if(teste == 'Credito'){
      newExpense.isDebit = false;
    }

    expenses.add(newExpense);
    _expenses.sink.add(expenses);
    expenseNameController.clear();
    expenseValueController.clear();

    if(newExpense.isDebit){
      total -= newExpense.value.toInt();
      spends += newExpense.value.toInt();
    } else{
      total += newExpense.value.toInt();
      entradas += newExpense.value.toInt();
    }

    update();
    
  }

}