class Word {
  String word = '';

  bool isVowel(int i) {
    return word.substring(i, i + 1) == 'a';
  }
}

void main() {
  Word word = Word();
  word.word = 'apple';
  
  print(word.isVowel(0)); // true
  print(word.isVowel(1));
  print(word.isVowel(2));
  print(word.isVowel(3));
  print(word.isVowel(4)); // true
}