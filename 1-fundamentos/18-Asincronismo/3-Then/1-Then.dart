/**
 * *conceito
 * then registra callbacks que serão chamadas quando o Future for concluido
 * onValue: valor passado ao termino do Future
 * catchError: Se omitido é lançado como uma exception
 * test: se qualquer logica retornar true é lançada a exception
 * whenComplete: Chama uma função anonima ao termino do Future
 * 
 */

Future<String> tarefa({int tempo = 1}) {
  // var msg = status(tempo);
  // return "Status: $msg";

  return status(tempo).then((msg) {
    return "\nstatus $msg";
  }).catchError((onError) {
    print("caterror: $onError");
  }, test: (onError) => onError is! Future && onError.runtimeType != Future);
}

Future<String> status([int? tempo]) {
  return Future.delayed(Duration(seconds: tempo = 0), () => Future.error("Erro intencional"));
  // return Future.delayed(Duration(seconds: tempo = 0), () => "Primeira tarefa finalizada\n");
}

// função sincrona

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

void main(List<String> args) {
  print("Then\n");

  contagem(segundos: 3);
  tarefa(tempo: 4).then((value) => print(value));
}
