import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:todo/controllers/todo.controller.dart';
import 'package:todo/repositories/todo.repository.dart';
import 'package:todo/stores/app.store.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);
    final repository = TodoRepository();
    final controller = TodoController(store: store, repository: repository);

    return Container(
      width: double.infinity,
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Observer(
            builder: (_) => TextButton(
              child: Text(
                "Hoje",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: store.currentState == "today"
                      ? FontWeight.bold
                      : FontWeight.w100,
                ),
              ),
              onPressed: () {
                controller.changeSelection("today");
              },
            ),
          ),
          Observer(
            builder: (_) => TextButton(
              child: Text(
                "Amanhã",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: store.currentState == "tomorrow"
                      ? FontWeight.bold
                      : FontWeight.w100,
                ),
              ),
              onPressed: () {
                controller.changeSelection("tomorrow");
              },
            ),
          ),
          Observer(
            builder: (_) => TextButton(
              child: Text(
                "Todas",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: store.currentState == "all"
                      ? FontWeight.bold
                      : FontWeight.w100,
                ),
              ),
              onPressed: () {
                controller.changeSelection("all");
              },
            ),
          ),
        ],
      ),
    );
  }
}
