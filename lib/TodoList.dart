import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_example/models/TodoItem.dart';
import 'package:flutter_redux_example/state/AppState.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<TodoItem>>(
      converter: (store) => store.state.toDos,
      builder: (BuildContext context, List<TodoItem> todos) {
        var items = todos.map((todo) {
          return ListTile(
            title: Text(todo.name),
          );
        }).toList();
        return ListView(
          children: items,
        );
      },
    );
  }
}
