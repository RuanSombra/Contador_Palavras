class WordCounter {
  // Conta palavras separando por espaços
  int countWords(String text) {
    final words =
        text.split(RegExp(r"\s+")).where((w) => w.trim().isNotEmpty);
    return words.length;
  }

  // Conta todos os caracteres
  int countCharacters(String text) {
    return text.length;
  }
}
