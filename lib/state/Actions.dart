import 'package:flutter/material.dart';
import 'package:flutter_redux_example/models/TodoItem.dart';
import 'package:flutter_redux_example/state/AppState.dart';
import 'package:redux/redux.dart';


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

Future<TodoItem> thunkaction(Store<AppState> store,  TodoItem item) async {
  final TodoItem searchResults = await new Future.delayed(
    new Duration(seconds: 1),
        () => item,
  );

  store.dispatch(searchResults);
}

/*
void action(Store<String> store) async {
    final String searchResults = await new Future.delayed(
      new Duration(seconds: 1),
      () => "Search Results",
    );

    store.dispatch(searchResults);
  }
 */
