import 'package:expense_tracker/widgets/expense.dart';
import 'package:flutter/material.dart';

var kcolourscheme = ColorScheme.fromSeed(seedColor: Color.fromARGB(233, 49, 225, 216));
void main(){
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith( colorScheme: kcolourscheme ,
         scaffoldBackgroundColor: Color.fromARGB(208, 206, 129, 238)),
     home: Expenses(),
    ),
  );
}