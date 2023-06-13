import 'package:dart_basic/unit_test/exam5/model/post.dart';
import 'package:dart_basic/unit_test/exam5/repository/post_memory_repository_impl.dart';
import 'package:dart_basic/unit_test/exam5/repository/post_repository.dart';
import 'package:test/test.dart';

void main() {
  test('PostMemoryRepository 테스트', () async {
    // 준비
    final PostRepository repository = PostMemoryRepositoryImpl();

    final posts = await repository.getPosts();
    expect(posts.length, 0);

    final post = Post(0, 'test1', 'test1');
    await repository.addPost(post);
    expect(posts.length, 1);

    await repository.updatePost(Post(0, 'test2', 'test2'));
    final firstPost = (await repository.getPosts())[0];
    expect(firstPost.title, 'test2');

    await repository.deletePost(post);
    expect(posts.length, 0);


  });
}