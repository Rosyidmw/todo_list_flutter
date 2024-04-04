// ignore_for_file: unused_field

import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // reference
  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
    ];
  }

  // load data
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  // update
  void updateDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }
}