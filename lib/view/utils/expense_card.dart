import 'package:flutter/material.dart';
import 'package:spending_pad/model/expense.dart';
import 'package:spending_pad/view/utils/colors.dart';

class ExpenseCard extends StatelessWidget {
  const ExpenseCard({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: lightGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            expense.date.toString(),
            style: TextStyle(
              color: darkBlue,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}