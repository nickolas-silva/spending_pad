import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spending_pad/database/db.dart';
import 'package:spending_pad/model/expense.dart';

class HomeController extends GetxController {
  var total = 0.obs;
  var spends = 0.obs;
  var entradas = 0.obs;

  var teste = '';

  @override
  void onInit() {
    super.onInit();
    loadExpenses();
  
  }

  TextEditingController expenseNameController = TextEditingController();
  TextEditingController expenseValueController = TextEditingController();

  final _expenses = StreamController<List<Expense>>();

  Stream<List<Expense>> get exStream => _expenses.stream;

  List<Expense> expenses = [];

  void addExpense() {
    Expense newExpense = Expense(
      id: Random().nextDouble().toString(),
      title: expenseNameController.text,
      value: double.parse(expenseValueController.text),
      date: DateTime.now(),
      isDebit: true
    );
    if (teste == 'Credito') {
      newExpense.isDebit = false;
    }

    expenses.add(newExpense);
    _expenses.sink.add(expenses);
    expenseNameController.clear();
    expenseValueController.clear();

    Db.insert('expenses', newExpense.toMap());

    if (newExpense.isDebit) {
      total -= newExpense.value.toInt();
      spends += newExpense.value.toInt();
    } else {
      total += newExpense.value.toInt();
      entradas += newExpense.value.toInt();
    }
    update();
  }

  void loadExpenses() async {
    final dbList = await Db.getData('expenses');
    expenses = dbList.map((expense) => Expense(
      id: expense['id'],
      title: expense['title'],
      date: DateTime.parse(expense['date']),
      value: expense['value'],
      isDebit: expense['isDebit'] == 1
    )).toList();
    _expenses.sink.add(expenses);

    for (var i = 0; i < expenses.length; i++) {
      if (expenses[i].isDebit) {
        total -= expenses[i].value.toInt();
        spends += expenses[i].value.toInt();
      } else {
        total += expenses[i].value.toInt();
        entradas += expenses[i].value.toInt();
      }
    }
    update();

  }

  void deleteExpense(int index) {
    if (expenses[index].isDebit) {
      total += expenses[index].value.toInt();
      spends -= expenses[index].value.toInt();
    } else {
      total -= expenses[index].value.toInt();
      entradas -= expenses[index].value.toInt();
    }
    print('Deletou: ${expenses[index].title}');
    Db.delete('expenses', expenses[index].id);
    expenses.removeAt(index);
    _expenses.sink.add(expenses);
    update();
  }
}
