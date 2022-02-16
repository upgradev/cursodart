///
///* Future
/// - é o ojeto que retorna um valor ou erro, resultado de uma execução assincrona/futura

String tarefa({int tempo = 1}) {
  var msg = status(tempo);
  return "Status: $msg";
}

Future<String> status([int? tempo]) {
  return Future.delayed(Duration(seconds: tempo = 0), () => "Primeira tarefa finalizada\n");
}

void novaTarefa({int tempo = 1}) {
  Future.delayed(Duration(seconds: tempo), () => print("\nstatus: Segunda tarefa finalizada\n"));
}

excecao({int tempo = 1}) => Future.delayed(Duration(seconds: tempo), () => throw Exception("erro intencional"));

void contagem({int segundos = 3}) {
  print("Carregando..\n");
  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print("${i * 33}%");
      if (i == segundos) {
        print("\nconcluido");
      }
    });
  }
}

void main() {
  print("Future\n");

  print(tarefa(tempo: 4)); //print é executado antes do termino da nossa future

  novaTarefa(tempo: 4); //print sera executada no future

  excecao(tempo: 6);

  contagem();
}
