class Comment {
  Comment({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  late final int postId;
  late final int id;
  late final String name;
  late final String email;
  late final String body;

  Comment.fromJson(Map<String, dynamic> json) {
    postId = json['postId'];
    id = json['id'];
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['postId'] = postId;
    _data['id'] = id;
    _data['name'] = name;
    _data['email'] = email;
    _data['body'] = body;
    return _data;
  }
}
