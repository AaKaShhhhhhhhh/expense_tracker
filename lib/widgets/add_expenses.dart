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




void _opendatepicker(){
  final now = DateTime.now();
final fistDate =   DateTime(now.year-1, now.month, now.day);
  showDatePicker(context: context, initialDate: now, firstDate:fistDate , lastDate: now);
}

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
              Text("Select Date"),
              IconButton(onPressed: _opendatepicker, icon: Icon(Icons.date_range))
            ],
        ),),]),
        
        Row(
          children: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("cancel")),
            ElevatedButton(onPressed:(){ 
              print(_textcontroller.text,); 
              print(_amountcontroller.text);}, 
              child: Text("Save"))
          ],
        ),
        
        
      ],
    ),);
  }
}
