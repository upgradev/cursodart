void semRetorno() {
  print("funções sem retorno");

  void conceito() {
    print("função void sem retorno");
  }

  void somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    print("soma: $valorA + $valorB = $resultado\n");
  }

  void verificarMaioridade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'não é maior';
    }
    print("$nome $resposta de idade!\n");
  }

  void contagemRegressiva(int numero) {
    for (var i = numero; i >= 0; i--) {
      print("contagem: ${i == 0 ? 'vai' : i}");
    }
    print("\n");
  }

  print("\n");
  converterKParaMilhas(dynamic array) {
    dynamic milha = 0.621271;
    for (var item in array) {
      print("$item\t Km/h em Milhas/h ${(item * milha).toStringAsFixed(2)}");
    }

    print("Array convertido e arredondado\n");
  }

  conceito();
  somarValores(2, 3);
  verificarMaioridade('Ana', 12);
  contagemRegressiva(3);
  converterKParaMilhas([1, 5, 10, 30, 40, 60, 80, 100, 120, 140, 160, 180, 200]);
}

comRetorno() {
  print("Funcoes com retorno\n");

  String conceito() {
    return "Função com retorno String";
  }

  print(conceito());

  String somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    return "soma: $valorA + $valorB = $resultado";
  }

  String verificarMaioridade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'não é maior';
    }
    return "$nome $resposta de idade!\n";
  }

  String contagemRegressiva(int numero) {
    var resultado;
    for (var i = numero; i >= 0; i--) {
      (i != 0) ? print("contagem: $i") : resultado = "contagem: vai";
    }

    return resultado;
  }

  converterKParaMilhas(dynamic array) {
    dynamic milha = 0.621271;
    for (var item in array) {
      print("$item\t Km/h em Milhas/h ${(item * milha).toStringAsFixed(2)}");
    }

    return "Array convertido e arredondado\n";
  }

  print(somarValores(2, 3));
  print(verificarMaioridade("ana", 34));
  print(contagemRegressiva(3));
  print(converterKParaMilhas([1, 5, 10, 30, 40, 60, 80, 100, 120, 140, 160, 180, 200]));
}

void main(List<String> args) {
  semRetorno();
  comRetorno();
}
