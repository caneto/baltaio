import 'package:todo/models/todo-item.model.dart';
import 'package:todo/repositories/todo.repository.dart';
import 'package:todo/stores/app.store.dart';

class TodoController {
  final AppStore _store;
  final TodoRepository _repository;

  TodoController({required AppStore store, required TodoRepository repository}) : 
    _store = store,
    _repository = repository,
    super();

  void changeSelection(String selection) {
    _store.clearTodos();

    switch (selection) {
      case "today":
        {
          _store.busy = true;
          _store.clearTodos();
          _store.changeSelected("today");
          _repository.getTodayTodos().then((data) {
            _store.setTodos(data);
            _store.busy = false;
          });
          return;
        }

      case "tomorrow":
        {
          _store.busy = true;
          _store.clearTodos();
          _store.changeSelected("tomorrow");
          _repository.getTomorrowTodos().then((data) {
            _store.setTodos(data);
            _store.busy = false;
          });
          return;
        }

      case "all":
        {
          _store.busy = true;
          _store.clearTodos();
          _store.changeSelected("all");
          _repository.getAll().then((data) {
            _store.setTodos(data);
            _store.busy = false;
          });
          return;
        }
    }
  }

  Future add(TodoItem item) async {
    _store.busy = true;
    await _repository.add(item);
    _store.busy = false;
    changeSelection(_store.currentState);
  }

  Future markAsDone(TodoItem item) async {
    _store.busy = true;
    await _repository.markAsDone(item);
    _store.busy = false;
    changeSelection(_store.currentState);
  }
}
