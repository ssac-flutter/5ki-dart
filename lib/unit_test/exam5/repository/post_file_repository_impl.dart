import 'package:dart_basic/unit_test/exam5/model/post.dart';
import 'package:dart_basic/unit_test/exam5/repository/data_storage.dart';
import 'package:dart_basic/unit_test/exam5/repository/post_repository.dart';

class PostFileRepositoryImpl implements PostRepository {
  final DataStorage<Post> _dataStorage;

  List<Post> _posts = [];

  PostFileRepositoryImpl(this._dataStorage);

  @override
  Future<void> addPost(Post post) async {
    _posts.add(post);

    await _dataStorage.save(_posts);
  }

  @override
  Future<void> deletePost(Post post) async {
    _posts.remove(post);

    await _dataStorage.save(_posts);
  }

  @override
  Future<List<Post>> getPosts() async {
    _posts = await _dataStorage.load();
    return _posts;
  }

  @override
  Future<void> updatePost(Post post) async {
    // await Future.delayed(Duration(seconds: 1));
    _posts = _posts.map((e) {
      if (e.id == post.id) {
        return post;
      }
      return e;
    }).toList();

    await _dataStorage.save(_posts);
  }

}