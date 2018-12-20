import 'package:flutter_redux_example/models/TodoItem.dart';
import 'package:flutter_redux_example/state/Actions.dart';
import 'package:flutter_redux_example/state/AppState.dart';

class AppReducer {
  static AppState reducer(AppState prev, dynamic action) {
    if (action is AddTodoAction) {
      prev.toDos.add(action.payload);
      return prev;
    } else if (action is TodoItem) {
      prev.toDos.add(action);
      return prev;
    } else {
      return prev;
    }
  }
}
