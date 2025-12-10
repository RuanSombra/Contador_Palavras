class WordCounter {
  int countWords(String text) {
    final words = text.split(RegExp(r"\s+")).where((w) => w.trim().isNotEmpty);
    return words.length;
  }

  int countCharacters(String text) {
    return text.length;
  }
}
