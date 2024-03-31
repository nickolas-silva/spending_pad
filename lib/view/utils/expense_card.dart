import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:spending_pad/model/expense.dart';
import 'package:spending_pad/view/utils/colors.dart';

class ExpenseCard extends StatelessWidget {
  const ExpenseCard({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                color: darkBlue,
                fontSize: 14,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                expense.title,
                style: TextStyle(
                  color: white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                '\$${expense.value.toStringAsFixed(2)}',
                style: TextStyle(
                  color: red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}