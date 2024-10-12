import 'package:flutter/material.dart';

class AddExpenses extends StatefulWidget{
  AddExpenses({super.key});


 
  @override

  State<StatefulWidget> createState() {
   return _addexpensesState();
  }
}

class _addexpensesState extends  State<AddExpenses> {
final _textcontroller  = TextEditingController();

final _amountcontroller =  TextEditingController();


@override  

void dispose(){
  _textcontroller.dispose();
  _amountcontroller.dispose();
super.dispose();
}
 

  @override  

  Widget build(BuildContext context){

    return Padding(padding: EdgeInsets.all(20),
    child: Column(
      children: [
        TextField(
          controller: _textcontroller,
          maxLength: 100,
          decoration: InputDecoration(label:  Text('Expense name'),),

        ),
        
        TextField(
          controller: _amountcontroller,
          maxLength: 100,
          decoration: InputDecoration(
            prefixText: '\$' ,
            label: Text("Enter the Amount : ")),
          keyboardType: TextInputType.numberWithOptions()

        ),
        Row(
          children: [
            TextButton(onPressed: (){}, child: Text("cancel")),
            ElevatedButton(onPressed:(){ 
              print(_textcontroller.text,); 
              print(_amountcontroller.value);}, 
              child: Text("Save"))
          ],
        ),
        
        
      ],
    ),);
  }
}
