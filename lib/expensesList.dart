import 'package:expense_tracker/widgets/expense.dart';
import 'package:expense_tracker/models/exp.dart';
import 'package:flutter/material.dart';

class Expenseslist extends StatelessWidget{
  Expenseslist({super.key , required this.expenses});

  final List<Exp> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:expenses.length, 
    itemBuilder: (ctx , index) => Text(expenses[index].title),) ;
  }
}