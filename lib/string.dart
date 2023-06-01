import 'package:string_validator/string_validator.dart';

class Word {
  String word = '';

  // 모음인지 아닌지 확인하는 코드
  // bool isVowel(int i) {
  //   return 'aeiou'.contains(word.substring(i, i + 1).toLowerCase());
  // }

  bool isVowel(int i) =>
      'aeiou'.contains(word.substring(i, i + 1).toLowerCase());

  // 자음인지 아닌지 확인하는 코드
  bool isConsonant(int i) {
    final String w = word.substring(i, i + 1).toLowerCase();

    // if (isAlpha(w)) {}
    // https://pub.dev/documentation/string_validator/latest/string_validator/isAlpha.html
    // 공식 문서에 있는데 쓸 수가 없네요...?

    // 알파벳인지 아닌지 확인하는 코드
    if (isAlpha(w)) {
      return !isVowel(i);
    } else {
      return false;
    }
  }
}

void main() {
  Word word = Word();
  word.word = 'AepL#';

  print(word.isVowel(0));
  print(word.isVowel(1));
  print(word.isVowel(2));
  print(word.isVowel(3));
  print(word.isVowel(4));
  print('---------');
  print(word.isConsonant(0));
  print(word.isConsonant(1));
  print(word.isConsonant(2));
  print(word.isConsonant(3));
  print(word.isConsonant(4));
}