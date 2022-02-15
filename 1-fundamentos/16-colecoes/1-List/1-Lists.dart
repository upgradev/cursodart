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

listmap() {
  print("List map\n");

  List<String> frutas = ["Morango", "banana", "tomate"];
  List<String> frutasMapeadas = frutas.map((e) => '$e é uma fruta').toList();
  print(frutasMapeadas);

  List<int> inteiros = [1, 5, 10];
  var incrementar = (int e) => ++e;
  final dobro = (int e) => e * 2;
  List<int> inteirosMapeados = inteiros.map(incrementar).map(dobro).toList();
  print(inteirosMapeados);

  List<double> doubles = [2.75, 5.5, 7.25];
  final triplo = (e) => e * 3;
  final Function moeda = (e) => "RS ${e.toDouble().toStringAsFixed(2).replaceFirst(".", ",")}";
  Function porcentagem(desconto) => (valor) => desconto * valor; //closure
  // List<dynamic> doublesMapeados = doubles.map(triplo).map( porcentagem(0.9)).map(moeda).toList();
  List<dynamic> doublesMapeados = doubles.map(triplo).toList();
  print(doublesMapeados);
}

listEvery() {
  print("List Every\n");

  //faz teste em  todos os elementos com o operador logico && retornando (true ou false)

  List<int> inteiros = [0, 1, 2, 3, 4, 5];
  bool resultado = inteiros.every((e) => e > 0);
  print(resultado);

  List<String> textos = List.from(["fernando", "Leila", "chloe"]);
  resultado = textos.every((e) => e.contains("e"));
  print(resultado);
}

listWhere() {
  print("Lista Where\n");

  // filtra os elementos da coleção criando uma nova do mesmo tamanho ou menor

  List<int> idades = [36, 12, 18, 31, 17, 23];
  print(idades.where((element) => element is int)); //retorno em itertable
  print(idades.whereType<int>());
  List<int> adultos = idades.where((int e) => e > 17).toList();
  print("adultos: $adultos");
  var crianca = idades.singleWhere((element) => element < 12, orElse: () => 0);
  print("crianças: $crianca");

  int menor = idades.lastWhere((element) => element.toString().startsWith('1'), orElse: () => 0);
  print("menor: $menor");
}

listReduce() {
  print("List Reduce\n");

  //compara os elementos da coleção retornando 1 unico elemento resultante
  // ao interagir com os elementos o indice 0 se torna o anterior, indice 1 se torna o atual

  List<int> numerosPares = List.generate(6, (index) => index * 2);
  print(numerosPares);
  int resultado = numerosPares.reduce((anterior, atual) {
    print("anterior: $anterior atual: $atual");
    return anterior + atual; //o retorno sera o proximo anterior
  });
  print(resultado);

  List<bool> boleanas = [true, false, !true, !false];
  bool anD = boleanas.reduce((anterior, atual) => anterior && atual);
  bool oR = boleanas.reduce((anterior, atual) => anterior || atual);
  print("and : $anD");
  print("or: $oR");

  List<int> idade = [36, 12, 18, 31, 17, 23];
  int maisNovo = idade.reduce((anterior, atual) => (anterior > atual) ? atual : anterior);
  print("mais novo: $maisNovo");
  int maisVelho = idade.reduce((anterior, atual) => (anterior < atual) ? atual : anterior);
  print("mais velho: $maisVelho");

  int media = idade.reduce((anterior, atual) => anterior + atual);
  print("media: ${(media / idade.length).toStringAsFixed(1)}");
}

listFold() {
  print("List Fold\n");
  //compara os elementos da coleção retornando 1 unico elemento resultante
  // o valor inicial se torna o anterior e o indice 0 se torna o atual

  List<int> numerosPares = List.generate(6, (index) => index * 2);
  print(numerosPares);
  int valorInicial = 10;
  int resultado = numerosPares.fold(valorInicial, (anterior, atual) {
    print("$anterior + $atual");
    return anterior + atual;
  });
  print(resultado);

  valorInicial = 30;
  resultado = numerosPares.fold(valorInicial, (anterior, atual)  {
    print("$anterior - $atual");
    return anterior - atual;
  });
  print(resultado);
}

void main() {
  print("List  \n");

  listForEach();
  listExpand();
  listmap();
  listEvery();
  listWhere();
  listReduce();
  listFold();
  
}
