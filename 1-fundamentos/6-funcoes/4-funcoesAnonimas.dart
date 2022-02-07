///
///funcoes anonimas não possui nomes
///

funcoesAnonimas() {
  print("Funções anonimas");

  print(''' 
    Sintaxe
    (){
      print('Funcao anonima');
    }

    () => print('Função anonima usando arrow');

  ''');

  print("\nFunções anonimas como variaveis");

  var variavelAnonima = () => print('Variavel anonima');
  variavelAnonima();

  var variavelAnonimaComprametro = (String msg) => print("Variavel anonima $msg");
  variavelAnonimaComprametro("com parametro");

  print("\nFunções anonimas como parametros\n");

  void executarFuncao(Function funcao) => funcao();
  executarFuncao(() => print("Funcao anonima passada como parametro"));

}

void main(List<String> args) {
  funcoesAnonimas();
}
