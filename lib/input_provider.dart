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
  Future<String> getUserText() async {
    print("Digite um texto ou frase:");
    return stdin.readLineSync() ?? "";
  }

  // Lê texto de um arquivo .txt
  Future<String> getTextFromFile(String path) async {
    final file = File(path);

    if(!await file.exists()){
      print("Seu arquivo não foi encontrado!!");
      return '';
    }

    return await file.readAsString();
  }

  Future<String> getInput() async{
    print("=====================");
    print("\nEscolha forma de entrada");
    print("\n1 - Digitar o texto manualmente;");
    print("\n2 - Ler o arquivo .txt;");
    stdout.write("> ");

    final option = stdin.readLineSync();

    if(option == '2'){
      stdout.write("\n\nLembrando para que funcione, preciso que você informe o caminho completo do arquivo: ");
      final path = stdin.readLineSync() ?? "";
      return await getTextFromFile(path);
    }
    return await getUserText();
  }
}
