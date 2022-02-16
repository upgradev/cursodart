/**
 * *Generators
 * são funções geradoras produzem sequencia de valores usando:
 *  Funçoes sincronas retonam Iterable
 *  Funçoes assincronas retornam Stream
 * 
 * 
 */

import 'dart:math';

/**
 *  yeld
 * utilizado em funções geradoras sincronas e assincronas
 * adciona um valor ao fluxo de saida da funcção assincrina * retornando sem encerrar a função
 * 
 */

funcoesGeradoras() {
  print("funções geradoras\n");
  Iterable<int> funcaoSincrona(int repeticaoMaxima) sync* {
    int i = 0;
    while (i < repeticaoMaxima) {
      yield ++i;
    }
  }

  print(funcaoSincrona(5));

  Stream<int> funcaoAssincrona(int repeticaoMaxima) async* {
    int i = 0;
    while (i < repeticaoMaxima) {
      yield ++i;
    }
  }

  funcaoAssincrona(3).forEach((element) => print(element));
}

funcoesGeradorasRecursivas() {
  print("Funções geradoras recursivas\n");
  Iterable<int> funcaoSincrona(int repeticaoMaxima) sync* {
    for (int i = 1; i <= repeticaoMaxima; i++) {
      yield i;
      yield* funcaoSincrona(i - repeticaoMaxima);
    }
  }

  print(funcaoSincrona(3));

  Stream<int> funcaoAssincrona(int repeticaoMaxima) async* {
    for (int i = 1; i <= repeticaoMaxima; i++) {
      yield i;
      yield* funcaoAssincrona(i - repeticaoMaxima);
    }
  }

  funcaoAssincrona(3).forEach((element) => print(element));
}

tratamentosExcecoes() async {
  print("Funções geradoras tratamento de exceções");

  Future<int> streamSoma(Stream<int> stream) async {
    var soma = 0;
    // await for (var valor in stream) {
    //   soma += valor;
    // }
    // return soma;
    try {
      await for (var valor in stream) {
        soma += valor;
      }
    } catch (e) {
      print(e);
      return -1;
    }
    return soma;
  }

  Stream<int> streamContagem(int termino, {int erro = 0}) async* {
    for (int i = 1; i <= termino; i++) {
      // yield i;
      if (i == erro) {
        throw Exception("Exception intencional");
      } else {
        yield i;
      }
    }
  }

  var stream = streamContagem(10, erro: 3);
  var soma = await streamSoma(stream);
  print(soma);
  // stream.forEach((element) => print(element));
}

void main(List<String> args) {
  // funcoesGeradoras();
  // funcoesGeradorasRecursivas();
  tratamentosExcecoes();
}
