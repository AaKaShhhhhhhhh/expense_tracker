import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

final uuid = Uuid();
enum Category  {food , travel ,lesure , work} 

class Exp{
    Exp({required this.title, 
    required this.amaount, 
    required this.data,
    required this.category,
    }): ID = uuid.v4();


  final String ID;
  final String title;
  final double amaount;
  final DateTime data;
  final Category category;

}