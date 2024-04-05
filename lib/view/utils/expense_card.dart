import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:spending_pad/controllers/home_controller.dart';
import 'package:spending_pad/model/expense.dart';
import 'package:spending_pad/view/utils/colors.dart';

class ExpenseCard extends StatelessWidget {
  ExpenseCard({super.key, required this.expense, required this.index});

  final Expense expense;
  final int index;
  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              print('Edit');
            },
            icon: Icons.edit,
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            label: 'Editar',
          ),
          SlidableAction(
            onPressed: (context) {
              print('Delete');
              print(index);
              controller.deleteExpense(index);
            },
            icon: Icons.delete,
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            label: 'Deletar',
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          color: lightBlue,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Data: ${DateFormat('dd/MM/yyyy').format(expense.date)}',
                style: TextStyle(
                    color: darkBlue, fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  expense.title,
                  style: TextStyle(
                      color: white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                if (expense.isDebit)
                  Text(
                    '\$${expense.value.toStringAsFixed(2)}',
                    style: TextStyle(
                        color: red, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                if (!expense.isDebit)
                  Text(
                    '\$${expense.value.toStringAsFixed(2)}',
                    style: TextStyle(
                        color: green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
