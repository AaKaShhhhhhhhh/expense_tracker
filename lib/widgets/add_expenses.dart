import 'dart:math';

import 'package:expense_tracker/models/exp.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddExpenses extends StatefulWidget{
  AddExpenses({super.key , required this.onAddExpense});

final void Function(Exp expense) onAddExpense ;
 
  @override

  State<StatefulWidget> createState() {
   return _addexpensesState();
  }
}

class _addexpensesState extends  State<AddExpenses> {
final _textcontroller  = TextEditingController();

final _amountcontroller =  TextEditingController();
DateTime? _pickeddate;

Category _selectedexpense = Category.lesure;



void _opendatepicker() async {
  final now = DateTime.now();
final fistDate =   DateTime(now.year-1, now.month, now.day);
  final selecteddate = await showDatePicker(context: context,
   initialDate: now, 
   firstDate:fistDate , 
   lastDate: now);
    setState(() {
      _pickeddate = selecteddate;
    });
}

void _storeexpensedata(){
final enteredamount = double.tryParse(_amountcontroller.text); //tryParse("helloo") => null , tryParse("1") => 1
final amountIncorrect = enteredamount == null || enteredamount<= 0;

  if(_textcontroller.text.trim().isEmpty || amountIncorrect ||  _pickeddate == null ){

showDialog(context: context, builder: (ctx) => AlertDialog(
  title:  const Text(" Incorrect/Missing Values"),
  content: const Text("Enter a Valid values"),
  actions: [
    TextButton(onPressed: () {
      Navigator.pop(ctx);
    },
    child: const Text("Okay"),)

  ],
)
);
return;
  }
  widget.onAddExpense(Exp(title: _textcontroller.text, 
  amaount: enteredamount, 
  data: _pickeddate!, 
  category: _selectedexpense));

  Navigator.pop(context);
}

@override  

void dispose(){
  _textcontroller.dispose();
  _amountcontroller.dispose();
super.dispose();
}
 

  @override  

  Widget build(BuildContext context){

    return Padding(padding: EdgeInsets.fromLTRB(16,48,16,16),
    child: Column(
      children: [
        TextField(
          controller: _textcontroller,
          decoration: InputDecoration(label:  Text('Expense name'),),

        ),
        Row(children: [
         Expanded(child: TextField(
          controller: _amountcontroller,
          decoration: InputDecoration(
            prefixText: '\$' ,
            label: Text("Enter the Amount : ")),
          keyboardType: TextInputType.numberWithOptions()

        ),),

        const SizedBox(width: 10,),
        

        Expanded(child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(_pickeddate == null ? "NO  DATE SELECTED" : formatter.format(_pickeddate!),),

              IconButton(onPressed: _opendatepicker, icon: Icon(Icons.date_range))
            ],
        ),
        ),
        ]
        ),
        SizedBox(height:  30,),
        
        Row(
          children: [ 
            DropdownButton(items: Category.values
            .map((Category) => DropdownMenuItem(
              value: Category,
              child: Text(
                Category.name.toUpperCase())
                )
                )
                .toList(),
                 onChanged: 
                 (value){
                  if(value == null){
                    return;
                  }

                  setState(() {
                    _selectedexpense = value;
                  });

                 }
                 ),
              const Spacer(),

            TextButton(onPressed: (){

              Navigator.pop(context);
            }, 
            child: 
            Text("cancel")),
            ElevatedButton(
              onPressed:
              _storeexpensedata, 
              
              
              child: Text("Save"))
          ],
        ),
        
        
      ],
    ),);
  }
}
