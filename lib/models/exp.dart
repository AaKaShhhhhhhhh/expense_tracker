import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final uuid = Uuid();
enum Category  {food , travel ,lesure , work} 
final formatter = DateFormat.yMd();

const CategoryIcons = {
  Category.food : Icons.lunch_dining,
  Category.lesure : Icons.movie,
  Category.travel : Icons.flight , 
  Category.work : Icons.work,
  };

class Exp{
    Exp({required this.title, 
    required this.amaount, 
    required this.data,
    required this.category,
    }): ID = uuid.v4();


  final String ID;
  String title;
  double amaount;
  final DateTime data;
  final Category category;

  String get formatterdata{
    return formatter.format(data);
  }

}
class ExpenseBucket {
  ExpenseBucket({required this.category , required this.expenses}) ;

  ExpenseBucket.forCategory(List<Exp> allExpenses, this.category)
  : expenses = allExpenses.where((expense) =>  expense.category == category).toList();

  

  final Category category;
  final List<Exp> expenses;

  double get totalexpenses{
    double sum = 0;

    for(final expense in  expenses){
      sum+=expense.amaount;

  }
  return sum;
}}