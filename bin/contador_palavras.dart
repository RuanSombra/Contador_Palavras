import 'package:contador_palavras/input_provider.dart';
import 'package:contador_palavras/word_counter.dart';


void main() async {
  final inputProvider = InputProvider();  // Singleton
  final counter = WordCounter();

  String text = await inputProvider.getUserText();

  int totalWords = counter.countWords(text);
  int totalCharacters = counter.countCharacters(text);

  print("\n--- RESULTADO ---");
  print("Total de palavras: $totalWords");
  print("Total de caracteres: $totalCharacters");
}
