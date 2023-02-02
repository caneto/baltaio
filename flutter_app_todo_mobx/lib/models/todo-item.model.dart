// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class TodoItem {
  final String? id;
  final String title;
  final bool? done;
  final DateTime date; // Alterado

  TodoItem({this.id, required this.title, this.done, required this.date});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'done': done,
      'date': date.millisecondsSinceEpoch,
    };
  }

  factory TodoItem.fromMap(Map<String, dynamic> map) {
    return TodoItem(
      id: (map["id"] ?? '') as String,
      title: (map["title"] ?? '') as String,
      done: (map["done"] ?? false) as bool,
      date: DateTime.fromMillisecondsSinceEpoch((map["date"]??0) as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory TodoItem.fromJson(String source) => TodoItem.fromMap(json.decode(source) as Map<String, dynamic>);
}
