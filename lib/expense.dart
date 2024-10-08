import 'package:flutter/material.dart';

class Expense extends StatefulWidget{
  const Expense({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpenseState();
    // TODO: implement createState
     
  }
}

class _ExpenseState extends State<Expense>{
  @override
  
  Widget build(BuildContext context){

return const Scaffold(
  body: Column(
    children: [
      Text("The Chart"),
      Text("Expense List....")
    ],
  ),
);
  }
}