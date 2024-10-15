import 'package:expense_tracker/models/exp.dart';
import 'package:flutter/material.dart';

class ExpensesItem  extends StatelessWidget{
  ExpensesItem( this.expense, {super.key });

  final Exp expense;

  @override  

  Widget build(BuildContext context){
    return 
    Card(
      shadowColor: Color.fromARGB(255, 242, 188, 89),
      color: Color.fromARGB(255, 106, 232, 95),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20
        ),
        child: 
        Column(
          children: [
            Text(expense.title.toString()),
            Text(expense.amaount.toString()),
            const SizedBox(width: 10,),
            Row(
              children: [
                Text('\$${expense.amaount.toStringAsFixed(2)}'),
                const Spacer(),
                 Row(
                  children: [
                    Icon(CategoryIcons[expense.category]),
                     SizedBox(width: 10,),
                     Text(expense.formatterdata)
                    
                  ],
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}