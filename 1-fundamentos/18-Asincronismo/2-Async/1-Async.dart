/**
 * Sincrona
 * Operações sincronas: Bloqueia a execução ate que seja concluida
 * Funções sincronas: executa somente operações sincronas
 * 
 * Assíncronas
 * Operações assincronas: Permite executar outras operações enquanto são processadas
 * funções assincronas: executam ao menos uma operação assincrona e operação suncrona
 * 
 * Await
 * Indica a espera uma operação assincrona, concluida de uma future
 * 
 * Async 
 * deve ser usado em toda função que tenha operações assincronas, Await  
 */

// funções assincronas

Future<String> tarefa({int tempo = 1}) async {
  var msg = await status(tempo);
  return "Status: $msg";
}

Future<String> status([int? tempo]) {
  try {
    Future.error("Tempo insuficiente para o load programado");
    //if (tempo! < 4) throw Exception("Tempo insuficiente para o load programado");
    return Future.delayed(Duration(seconds: tempo = 0), () => "Primeira tarefa finalizada\n");
  } catch (e) {
    print("catch $e");
    return Future.error("asda");
  }
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

void main(List<String> args) async {
  print("Async await\n");

  contagem(segundos: 3); //função sincrona

  print(await tarefa(tempo: 4)); //função assincrona
}
