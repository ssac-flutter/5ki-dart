import 'dart:convert';

import 'package:dart_basic/http/model/comment.dart';
import 'package:dart_basic/http/model/post.dart';
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

  todos.forEach((e) { print(e.title); });

  final posts = await getPosts();

  posts.forEach(printCard);

  getPostsInfo();
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

Future<List<Post>> getPosts() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  List<dynamic> jsonList = jsonDecode(response.body);

  return jsonList.map((e) => Post.fromJson(e)).toList();
}

Future<List<Comment>> getComments() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));

  List<dynamic> jsonList = jsonDecode(response.body);

  return jsonList.map((e) => Comment.fromJson(e)).toList();
}

Future<void> getPostsInfo() async {
  final posts = await getPosts();
  final comments = await getComments();

  posts.forEach((post) {
    printCard(post);

    int commentLength = comments.where((comment) => comment.postId == post.id).length;

    print('댓글 수 : $commentLength개');
  });
}

Future<http.Response> getHtml(String url) async {
  return await http.get(Uri.parse(url));
}


void printCard(Post post) {
  print('************');
  print('*  ${post.title}  *');
  print('************');
  print('내용 : ${post.body.substring(0, 80)}');
  print('************');
}