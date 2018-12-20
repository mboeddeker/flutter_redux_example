import 'package:flutter_redux_example/state/Actions.dart';
import 'package:flutter_redux_example/state/AppState.dart';

class AppReducer {
  static AppState reducer(AppState prev, dynamic action) {
    if (action is AddTodoAction) {
      var todos = prev.toDos;
      todos.add(action.payload);

      AppState appState = AppState(todos, prev.listState);
      return appState;
    } else {
      return prev;
    }
  }
}
