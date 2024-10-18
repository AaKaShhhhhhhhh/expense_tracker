import 'package:expense_tracker/widgets/expense.dart';
import 'package:flutter/material.dart';

var kcolourscheme = ColorScheme.fromSeed(seedColor: Color.fromARGB(250, 245, 233, 5));
void main(){
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith( colorScheme: kcolourscheme ,
         appBarTheme: AppBarTheme().copyWith(
          
          backgroundColor:kcolourscheme.onPrimaryContainer,
          foregroundColor: kcolourscheme.primaryContainer
         ),
         cardTheme: CardTheme().copyWith(
          color: kcolourscheme.secondaryContainer,
          shadowColor: kcolourscheme.onSecondaryContainer,
          margin: EdgeInsets.all(16)
         ),
         elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
          backgroundColor: kcolourscheme.primaryContainer,
         ))
         ),

         
     home: Expenses(),
    ),
  );
}