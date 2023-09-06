import 'package:bloc/bloc.dart';
import 'package:dart_front/src/Errors/todo_errors.dart';
import 'package:dart_front/src/cubits/todo_states.dart';

class TodoCubit extends Cubit<TodoState> {
  final List<String> _todos = [];
  List<String> get todos => _todos;

  TodoCubit(): super(InitialTodoState());

  Future<void> addTodo({required String todo}) async {
    emit(LoadingTodoState());

    await Future.delayed(const Duration(seconds: 1));

    if (_todos.contains(todo)) {
      emit(ErrorTodoState(ErrorMessages.existingItem));
    } else {
      _todos.add(todo);
      emit(LoadedTodoState(_todos));
    }
  }

  Future<void> removeTodo({required int index}) async {
    emit(LoadingTodoState());
    await Future.delayed(const Duration(seconds: 1));

    _todos.removeAt(index);
    emit(LoadedTodoState(_todos));
  }
}
