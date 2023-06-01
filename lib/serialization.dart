import 'dart:convert';

class User {
  String name;
  String email;

  User(this.name, this.email);

  // 역직렬화
  User.fromJson(Map<String, dynamic> json)
      : name = json['name'], email = json['email'];

  // 직렬화
  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
      };
}

void main() {
  // 실제 내가 받는 데이터
  String jsonString = '{"name": "홍길동","email": "abc@aaa.com"}';

  // jsonString => Map<String, dynamic>
  Map<String, dynamic> json = jsonDecode(jsonString);

  print(json['name']);
  print(json['email']);

  // 역직렬화
  User user = User.fromJson(json);
  print(user.name);
  print(user.email);

  user.name = '김삿갓';

  print(user.toJson());

  String userString = jsonEncode(user.toJson());

  print(userString);
}
