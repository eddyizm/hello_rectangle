import 'package:flutter/material.dart';
import 'task_02_category_widget/category.dart';

class CategoryRoute extends StatelessWidget{
  const CategoryRoute();
  
  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass', 
    'Time', 
    'Digital Storage',
    'Energy',
    'Currency',
  ];

    static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];


}