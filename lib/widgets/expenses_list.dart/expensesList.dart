import 'package:expense_tracker/widgets/expense.dart';
import 'package:expense_tracker/models/exp.dart';
import 'package:expense_tracker/widgets/expenses_list.dart/expenses_item.dart';
import 'package:flutter/material.dart';

class Expenseslist extends StatelessWidget{
  Expenseslist({super.key , required this.expenses ,
   required this.asd ,
     required this.onRemoveexpense });


  final List<Exp> expenses;

  final void Function(Exp expense) onRemoveexpense;
  final void Function() asd;
  
  

  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:expenses.length, 
    itemBuilder: (ctx , index) => Dismissible(
      background: Container(
        color: Theme.of(context).colorScheme.error,
        margin: EdgeInsets.all(16),
      ),
      key: ValueKey(expenses[index]), 
      onDismissed: (direction){
        onRemoveexpense(expenses[index]);
      } ,
    child: ExpensesItem(expenses[index],func:  asd,
    )
    )
    ) ;
  }
}