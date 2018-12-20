
import 'package:flutter_redux_example/models/TodoItem.dart';

class AppState {
  final List<TodoItem> toDos;
  final ListState listState;

  AppState(this.toDos, this.listState);

  factory AppState.initial() => AppState([], ListState.listOnly);
}

enum ListState {
  listOnly, listWithNewItem
}