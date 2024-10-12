import 'package:expense_tracker/widgets/add_expenses.dart';
import 'package:expense_tracker/widgets/expenses_list.dart/expensesList.dart';
import 'package:expense_tracker/models/exp.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpenseState();
    // TODO: implement createState
     
  }
}

class _ExpenseState extends State<Expenses>{
  final List<Exp> _registeredExpence = [
    Exp(title: 'Expense Tracker', 
    amaount: 69.99, 
    data: DateTime.now(), 
    category: Category.work),

    Exp(title: 'cinema' , amaount: 300.00, data: DateTime.now(), category: Category.lesure)

  ];

  void _openexpenseoverlay(){

    showModalBottomSheet(context: context, builder: (builder){return AddExpenses();}

      
    );


  }
  @override
  
  Widget build(BuildContext context){

return  Scaffold(
  appBar: AppBar(
    title: Text('Expense Tracker'),
    backgroundColor: Color.fromARGB(144, 44, 118, 131),
    actions: [
      IconButton(onPressed: _openexpenseoverlay , icon: Icon(Icons.add))
    ],
  ),
  body: Column(
    children: [
      Text("The Chart"),
      Expanded(child : Expenseslist(expenses:  _registeredExpence,))
    ],
  ),
);
  }
}