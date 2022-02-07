///
///Funções com parametros posicionados deve obedecer a ordem declarada
///Funções com parametros nomeados dever ser declarado
///os parametros posicionados e nomeados devem começar pelo ultimo parametro da função
///

funcaoParametros() {
  print("funções com parametros posicionados e default\n");

  void exibirDados1(String nome, [int peso = 50, double? altura]) {
    print("Nome: $nome peso: $peso altura: $altura");
  }

  exibirDados1("Fernando");
  exibirDados1("Fernando", 65, 1.92);

  print("\nfunções com parametros nomeados e default\n");

  exibirdados2(String nome, {int? peso = 60, double? altura}) {
    print("Nome: $nome peso: $peso altura: ${altura ?? 'Não informada!'}");
  }

  exibirdados2("Fernando");
  exibirdados2("Fernando", peso: 56, altura: 1.78); //pode declarar fora de ordem

  print("\nfunções com parametros para outras funções\n");

  void falar() {
    print("Essa 'uma função passada como parametro nomeado");
  }

  void saudacao(String nome, {Function? funcaoFalar}) {
    print("Olá eu sou $nome");
    funcaoFalar!();
  }

  saudacao("Ana", funcaoFalar: falar);
  print("\n");
  saudacao("Ana", funcaoFalar: () => print("Função anonima passada como parametro nomeado"));
}

void main(List<String> args) {
  funcaoParametros();
}
