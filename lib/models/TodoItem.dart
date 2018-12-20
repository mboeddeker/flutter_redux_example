import 'package:flutter/material.dart';

class TodoItem {
  String name;
  bool checked;

  TodoItem({@required this.name, this.checked = false});
}
