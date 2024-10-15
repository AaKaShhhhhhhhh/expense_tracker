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
    Exp(title: 'expense name', 
    amaount: 69.99, 
    data: DateTime.now(), 
    category: Category.work),

    Exp(title: 'cinema' , amaount: 300.00, data: DateTime.now(), category: Category.lesure)

  ];
  void addExpense(Exp expense){
    setState(() {
    _registeredExpence.add(expense);
  });}

  void removeexpense( Exp expense){
    final expenseindex = _registeredExpence.indexOf(expense);
    setState(() { 
      _registeredExpence.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration:  Duration(seconds: 2),
        content:  Text("COMTENT DELETED"),
        action: SnackBarAction(label: "Undo", onPressed: (){
          setState(() {
            _registeredExpence.insert(expenseindex, expense);
          });
        }),
        )
        );
  }

  void _openexpenseoverlay(){
    
    showModalBottomSheet(context: context, 
    builder: (builder){
      return AddExpenses(
        onAddExpense: addExpense,);},

    isScrollControlled: true

      
    );


  }
  @override
  
  Widget build(BuildContext context){
    Widget mainContent = const Center(child: Text("NO DATA YET , ADD DATA !"),) ;

    if(_registeredExpence.isNotEmpty){
      mainContent = Expenseslist(
        expenses:  _registeredExpence, 
        onRemoveexpense: removeexpense,);

    }

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
      Expanded(child : mainContent  )
    ],
  ),
);
  }
}