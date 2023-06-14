import 'dart:convert';
import 'dart:io';

import 'package:dart_basic/unit_test/exam5/model/post.dart';

abstract interface class DataStorage<T> {
  Future<void> save(List<T> posts);

  Future<List<T>> load();
}

class FileDataStorage implements DataStorage<Post> {
  final File file;

  FileDataStorage(this.file);

  @override
  Future<List<Post>> load() async {
    final jsonString = await file.readAsString();
    Iterable jsonList = jsonDecode(jsonString);
    return jsonList.map((e) => Post.fromJson(e)).toList();
  }

  @override
  Future<void> save(List<Post> posts) async {
    List<Map<String, dynamic>> jsonList = posts
        .map((e) => e.toJson())
        .toList();

    String jsonString = jsonEncode(jsonList);
    await file.writeAsString(jsonString);
  }
}