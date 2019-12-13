import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todoey/models/tasks.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs', isDone: false),
    Task(name: 'Buy chocolates'),
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get totalTask{
    return _tasks.length;
  }

  void addTask(String newTaskTile){
    _tasks.add(Task(name: newTaskTile));
    notifyListeners();
  }
  void removeTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
}