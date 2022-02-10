import 'dart:math';

///
///*Conceito
///List é uma coleção dinamica e ordenada de elementos entre colchetes
///forEach: Aplica a função aninima a cada elemento da nossa coleção
/// -todo array é um List
///
///

listForEach() {
  print("List ForEach\n");

  var array = [0, 2.5, 5, 7.25, 10];
  array.forEach((elemento) {
    print("forEach: $elemento");
  });

  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];
  List<bool> boleanas = [true, false, !true, !false];
  List<String> frutas = ["morango", "banana", "Tomates"];

  print("\nImplementação: ${frutas.runtimeType}");

  print("\nbooleanas[3] ${(boleanas[inteiros.length]) ? 'verdadeiro' : 'falso'}");

  frutas.insert(0, "Abacaxi");
  frutas.add("Laranja");
  frutas.forEach((element) => print("foreach: $element"));
  print(frutas);
  frutas.removeLast();
  frutas.removeWhere((element) => element == "banana");
  print(frutas);

  print(frutas.elementAt(2));
  print(frutas.contains("abacaxi")); //camelcase

  List<num> numeros = List.from(inteiros)
    ..addAll(doubles)
    ..shuffle()
    ..sort();
  print("\n$numeros");

  // ignore: deprecated_member_use
  List<dynamic> lista = List.filled(2, null, growable: false); //fixar o numero de lementos em 2
  lista = numeros.take(3).skip(1).take(2).toList();
  print("lista: $lista");

  // geradores de lista
  List<String> listaPreenchida = List.filled(2, "elemento");
  print("listaPreenchida: $listaPreenchida");

  List<String> listaGerada = List.generate(2, (i) => "Nome ${i}");
  print("listaGerada $listaGerada");

  List<double> listaPreco = List.generate(5, (i) => double.parse((i + 1 * Random().nextDouble()).toStringAsFixed(2)));
  print("listaPreco $listaPreco");

  listaPreco.forEach((e) => print("forteach $e"));
}

// cria uma nova lista expandindo ou concatenando os elementos
listExpand() {
  print("\n List Expand");

  var lista = [
    [1, 2],
    [3, 4]
  ];

  List<dynamic> listaFlat = lista.expand((element) => element).toList();
  print("listaflat: ${listaFlat}");

  List<dynamic> listaDuplicada = listaFlat.expand((element) => [element, element]).toList();
  print("listaDuplicada: $listaDuplicada");

  List<num> numeros = [1, 2.5, 5, 7.25, 10];
  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];

  List<dynamic> listaDinamica = List.filled(1, null, growable: false);
  print("$listaDinamica");
  print(listaDinamica = [1, 5, 10] + [2, 7]);
  print(listaDinamica = []
    ..addAll(inteiros)
    ..addAll(doubles));
  print(listaDinamica = [0, ...inteiros, 15]);

  print(listaDinamica = [...[], ...inteiros, if (doubles is List<double>) ...doubles]);
  print(listaDinamica = [...[], for (var numero in numeros) numero]);
}

void main() {
  print("List  \n");

  listForEach();
  listExpand();
}
