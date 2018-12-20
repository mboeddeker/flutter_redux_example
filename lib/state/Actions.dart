import 'package:flutter/material.dart';
import 'package:flutter_redux_example/models/TodoItem.dart';

class Action {
  final dynamic payload;

  Action(this.payload);
}

class AddTodoAction extends Action {
  final TodoItem payload;

  AddTodoAction({@required this.payload}) : super(payload);
}

class CheckTodoItem extends Action {
  CheckTodoItem({@required TodoItem item}) : super(item);
}
