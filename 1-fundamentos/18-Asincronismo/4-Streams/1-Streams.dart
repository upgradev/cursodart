import 'dart:async';

// conceito
conceito() {
  print("Stream conceito\n");

  List<dynamic> lista = [];

  //1 passo controlador
  var controlador = StreamController<dynamic>();

  //2 stream
  var stream = controlador.stream;

  //3 inscrição de ouvintes na stream
  stream.listen((onData) {
    print("evento: $onData");
    lista.add(onData);
  }, onDone: () {
    print("Stream finalizada");
    print(lista);
  });

  //4adicionar um evento a stream
  controlador.sink.add("Fernando");
  controlador.sink.add(36);
  controlador.sink.add(1.89);
  controlador.sink.add(false);
  controlador.close();

  print("Monitorando...");
}

//model
model() {
  print("Stream model\n");
  //stream
  var minhaStream = Contador(termino: 5, erro: 3).stream.asBroadcastStream();

  //inscriçao de ouvintes
  final inscrito1 = minhaStream.listen(
      (onData) {
        print("Inscrito1: $onData");
      },
      onError: (erro) {
        print("inscrito1: $erro");
      },
      cancelOnError: false,
      onDone: () {
        print("inscrito1 completo");
      });

  var pares = (e) => e % 2 == 0;
  var mapear = (e) => "$e é par";

  //modificar eventos
  final inscrito2 = minhaStream.where(pares).map(mapear).listen(
      (onData) {
        print("Inscrito2: $onData");
      },
      onError: (erro) {
        print("inscrito2: $erro");
      },
      cancelOnError: false,
      onDone: () {
        print("inscrito2 completo");
      });

  // gerenciar inscritos
  for (var i = 1; i <= 3; i++) {
    Future.delayed(Duration(seconds: 1), () {
      if (i == 1) inscrito1.pause();
      if (i == 2) inscrito1.resume();
      if (i == 3) inscrito1.cancel();
    });
  }
}

class Contador {
  var _contagem = 1, termino, erro;
  final _controlador = StreamController<int>();

  Sink<int> get sink => _controlador.sink; //não expor o contrlador exponha as interfaces
  Stream<int> get stream => _controlador.stream;

  Contador({this.termino = 5, this.erro = 3}) {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      _contagem < termino ? sink.add(_contagem) : sink.close();
      _contagem++;
      if (_contagem == erro) _controlador.addError("Erro intencional");
      if (_contagem > termino) timer.cancel();
    });
  }
}

metodos() async {
  print("Stream metodos e ouvintes\n");

  var stream = Stream<dynamic>.periodic(Duration(seconds: 1), (e) => e + 1).take(5).asBroadcastStream();
  stream = stream.takeWhile((element) => element <= 5).skipWhile((element) => element > 3).take(3).map((event) => event.toString().padLeft(2, "0"));

  //ouvintes
  stream.listen((ondata) {
    print("listen: $ondata");
  }, onDone: () {
    print("Contagem finalizada");
  });

  // stream.forEach((e) => print("foreach: $e"));

  // await for (dynamic evento in stream) {
  //   print("forIn: $evento");
  // }

  // List<dynamic> eventos = await stream.toList();
  // print(eventos);

  Future<List<dynamic>> eventosFuturos = stream.toList();
  print(await eventosFuturos);
}

void main(List<String> args) {
  // conceito();
  // model();
  metodos();
}
