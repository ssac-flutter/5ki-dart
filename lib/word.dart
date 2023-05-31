class Word {
  String word = '';

  bool isVowel(int i) =>
      word.substring(i, i + 1).contains(RegExp(r'[aeiouAEIOU]'));
}

void main() {
  Word word = Word();
  word.word = 'apple';

  print(word.isVowel(0));
}