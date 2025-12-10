import 'dart:io';
import 'package:contador_palavras/input_provider.dart';
import 'package:contador_palavras/word_counter.dart';

void main() async {
  final inputProvider = InputProvider(); // Singleton
  final counter = WordCounter();

  while (true) {
    // Obter texto (digitado ou arquivo) ---
    String text = await inputProvider.getInput();

    if (text.trim().isEmpty) {
      print("\nNenhum texto válido foi fornecido!");
    } else {
      // Processar texto 
      int totalWords = counter.countWords(text);
      int totalCharacters = counter.countCharacters(text);

      print("\n--- RESULTADO ---");
      print("Total de palavras: $totalWords");
      print("Total de caracteres: $totalCharacters");
    }

    // Perguntar ao usuário se deseja continuar 
    print("\nDeseja analisar outro texto?");
    print("1 - Sim");
    print("2 - Não (sair)");
    stdout.write("> ");

    final option = stdin.readLineSync();

    if (option == "2") {
      print("\nPrograma encerrado. Até mais!");
      break; // Sai do loop -> encerra o programa
    }

    print("\nReiniciando...\n");
  }
}
