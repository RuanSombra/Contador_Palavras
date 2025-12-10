import 'dart:io';

class InputProvider {
  // Instância única (Singleton)
  static final InputProvider _instance = InputProvider._internal();

  // Construtor privado
  InputProvider._internal();

  // Construtor público que retorna a única instância
  factory InputProvider() {
    return _instance;
  }

  // Método para pegar texto do usuário
  Future<String> getText() async {
    print("Digite um texto ou frase:");
    return stdin.readLineSync() ?? "";
  }
}
