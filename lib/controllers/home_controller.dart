import 'package:get/get.dart';
import 'package:spending_pad/model/expense.dart';

class HomeController extends GetxController{
  var total = 0;
  var spends = 0;
  var entradas = 0;

  List<Expense> expenses = [];
  
  void addExpense(Expense expense){
    expenses.add(expense);
    total -= expense.value.toInt();
    spends += expense.value.toInt();
    update();
  }


}