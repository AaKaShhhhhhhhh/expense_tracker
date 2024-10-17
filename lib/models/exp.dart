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