import 'package:expense_tracker/models/exp.dart';
import 'package:expense_tracker/widgets/add_expenses.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expense.dart';



class ExpensesItem  extends StatelessWidget{
  const ExpensesItem( this.expense, {super.key, required this.func  });
  // final void Function(Exp expense) onupdateExpense ;
  final void Function() func;
  
  

  final Exp expense;
  

  
  
  
  @override  

  Widget build(BuildContext context){
    return 
    Card(
      
      borderOnForeground: true,
      
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20
        ),
        child: 
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children:[
              Center(
                child: 
            Text(expense.title,
             style: Theme.of(context).textTheme.titleLarge,
             ),
             ),
            
            Spacer(),

            ElevatedButton(
              
                onPressed: func,
                
               
               child: Icon(Icons.edit),
               style: ButtonStyle(padding:
                MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.all(1))),
               ),]
               ),
            
            const SizedBox(width: 50,),

          
            Row(
              children: [
                Text('\$${expense.amaount.toStringAsFixed(2)}'),
                const Spacer(), 
                SizedBox(height: 70,),
                 Row(
                  
                  children: [
                    Column(children: [
                      
                      
               
                    Icon(CategoryIcons[expense.category],  size: 20, color: Theme.of(context).colorScheme.primary), 

                     SizedBox(width: 30,),
                     Text(expense.formatterdata),]
                     
                    ),
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