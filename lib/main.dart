import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_example/TodoList.dart';
import 'package:flutter_redux_example/models/TodoItem.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:flutter_redux_example/state/AppState.dart';
import 'package:flutter_redux_example/state/AppReducer.dart';
import 'package:flutter_redux_example/state/Actions.dart';
import 'package:redux/redux.dart';

void main() => runApp(TodoListApp());

class TodoListApp extends StatelessWidget {
  // Create Redux Store
  final Store<AppState> store = Store<AppState>(AppReducer.reducer,
      initialState: AppState.initial(),
      middleware: [LoggingMiddleware.printer()]);

  @override
  Widget build(BuildContext context) => StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              appBar: AppBar(
                title: Text('REDUX EXAMPLE'),
                centerTitle: true,
              ),
              body: Container(padding: EdgeInsets.all(8), child: TodoList()),
              floatingActionButton: StoreConnector<AppState, VoidCallback>(
                converter: (store) {
                  return () => store.dispatch(
                      AddTodoAction(payload: TodoItem(name: "Adding Todo")));
                },
                builder: (context, callback) {
                  return FloatingActionButton(
                      onPressed: callback,
                      tooltip: 'Something',
                      child: Icon(Icons.add));
                },
              )),
        ),
      );
}
