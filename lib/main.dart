import 'package:expense_tracker/widgets/expense.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var kcolourscheme = ColorScheme.fromSeed(seedColor: Color.fromARGB(248, 102, 248, 18));
var kdarkcolorscheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(248, 63, 3, 158),
);
void main(){
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,]).then((fn){

runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        brightness: Brightness.dark,
        colorScheme: kdarkcolorscheme,
      ),
      theme: ThemeData().copyWith( colorScheme: kcolourscheme ,
         appBarTheme: AppBarTheme().copyWith(
          
          backgroundColor:kcolourscheme.onPrimaryContainer,
          foregroundColor: kcolourscheme.primaryContainer
         ),
         cardTheme: CardTheme().copyWith(
          color: kdarkcolorscheme.secondaryContainer,
          shadowColor: kdarkcolorscheme.onPrimaryContainer,
          margin: EdgeInsets.all(16)
         ),
         elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
          backgroundColor: kcolourscheme.primaryContainer,
         ),
         ),
         textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(color: kdarkcolorscheme.onPrimaryContainer,
          fontWeight: FontWeight.bold,
          fontSize: 20),
          
         ),

         
    
    ),  
     home: Expenses()
  ),
  );
  }
  );
  }
    
    
  
  
