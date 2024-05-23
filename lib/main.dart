import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/bloc/task_bloc.dart';
import 'package:todo_app/ui.dart';

// Event
// abstract class TodoEvent {}

// class AddTodoEvent extends TodoEvent {
//   final String title;

//   AddTodoEvent(this.title);
// }

// class ToggleTodoCompletionEvent extends TodoEvent {
//   final int index;

//   ToggleTodoCompletionEvent(this.index);
// }

// class DeleteTodoEvent extends TodoEvent {
//   final int index;

//   DeleteTodoEvent(this.index);
// }

// // State
// class TodoState {
//   final List<Todo> todos;

//   TodoState(this.todos);
// }

// // Bloc
// // Bloc
// class TodoBloc extends Bloc<TodoEvent, TodoState> {
//   TodoBloc() : super(TodoState([])) {
//     on<AddTodoEvent>(_addTodo);
//     on<ToggleTodoCompletionEvent>(_toggleTodoCompletion);
//     on<DeleteTodoEvent>(_deleteTodo);
//   }

//   void _addTodo(AddTodoEvent event, Emitter<TodoState> emit) {
//     List<Todo> updatedTodos = List.from(state.todos);
//     updatedTodos.add(Todo(title: event.title));
//     emit(TodoState(updatedTodos));
//   }

//   void _toggleTodoCompletion(
//       ToggleTodoCompletionEvent event, Emitter<TodoState> emit) {
//     List<Todo> updatedTodos = List.from(state.todos);
//     updatedTodos[event.index] = Todo(
//       title: updatedTodos[event.index].title,
//       isCompleted: !updatedTodos[event.index].isCompleted,
//     );
//     emit(TodoState(updatedTodos));
//   }

//   void _deleteTodo(DeleteTodoEvent event, Emitter<TodoState> emit) {
//     List<Todo> updatedTodos = List.from(state.todos);
//     updatedTodos.removeAt(event.index);
//     emit(TodoState(updatedTodos));
//   }
// }

// // Todo class to represent individual todos
// class Todo {
//   final String title;
//   final bool isCompleted;

//   Todo({required this.title, this.isCompleted = false});
// }

// TodoApp to handle UI
class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => TodoBloc(),
        child: TodoScreen(),
      ),
    );
  }
}

void main() {
  runApp(TodoApp());
}
