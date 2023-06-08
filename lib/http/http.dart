import 'dart:convert';

import 'package:dart_basic/http/model/todo.dart';
import 'package:http/http.dart' as http;

void main() async {
  final json = await getTodo(1);
  Todo todo = Todo.fromJson(json);
  print(todo.title);

  final response = await getHtml('https://www.google.com');
  print(response.statusCode);
  // print(response.body);

  final todos = await getTodos();

  print(todos.length);
}

Future<Map<String, dynamic>> getTodo(int id) async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
  return jsonDecode(response.body);
}

Future<List<Todo>> getTodos() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

  List<dynamic> jsonList = jsonDecode(response.body);

  return jsonList.map((e) => Todo.fromJson(e)).toList();
}

Future<http.Response> getHtml(String url) async {
  return await http.get(Uri.parse(url));
}
