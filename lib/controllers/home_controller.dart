import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spending_pad/model/expense.dart';

class HomeController extends GetxController{
  var total = 0;
  var spends = 0;
  var entradas = 0;

  TextEditingController expenseNameController = TextEditingController();
  TextEditingController expenseValueController = TextEditingController();

  final _expenses = StreamController<List<Expense>>();

  Stream<List<Expense>> get exStream => _expenses.stream;

  List<Expense> expenses = [];
  
  // void addExpense(Expense expense){
  //   expenses.add(expense);
  //   total -= expense.value.toInt();
  //   spends += expense.value.toInt();
  //   update();
  // }

  void printL(){
    print(expenseNameController.text);
    print(expenseValueController.text);
  }

  void addExpense(){
    Expense newExpense = Expense(
      title: expenseNameController.text,
      value: double.parse(expenseValueController.text),
      date: DateTime.now()
    );

    expenses.add(newExpense);
    _expenses.sink.add(expenses);
    expenseNameController.clear();
    expenseValueController.clear();

    update();
    
  }

}