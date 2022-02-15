// Map é uma coleção dinamica e customizavel de chaves e valores entre {} As chaves são unicas e os valores não se repetem

import 'dart:collection';

linkedHashMap() {
  print("LinkedHashMap\n");

  List<String> nomes = ["fernando", "leila"];
  Map<int, String> nomesMap = nomes.asMap(); //converte uma lista em map
  print("${nomesMap}");
  nomesMap.forEach((key, value) => print("$key: $value"));

  Map<String, dynamic> frutas = Map();
  frutas["banana"] = "amarela";
  frutas["banana"] = "verde"; //mesma chave atualiza o valor
  frutas["goiaba"] = "amarela";
  frutas["maca"] = "vermelha";
  print("\n$frutas");

  print(frutas.containsKey("banana"));
  print(frutas.containsValue("azul"));
  print(frutas["banana"]); //valor da chave
  frutas.clear();
  // frutas[null] = null; não aceita mais

  Map<String, dynamic> usuario = Map.from({"nome": "fernando", "idade": 35, "peso": 65.9});

  usuario.update("nome", (valor) => "$valor Martins");
  usuario.update("idade", (valor) => ++valor);
  usuario.update("peso", (valor) => 70, ifAbsent: () => "indefinido");
  usuario.removeWhere((chave, valor) => chave == "peso" && valor == 70);
  print(usuario);
  usuario.removeWhere((chave, valor) => chave == "peso" && valor == 70);
  usuario.update("peso", (valor) => 70, ifAbsent: () => "indefinido");
  usuario.putIfAbsent("altura", () => 1.83); //insere quando não existe
  usuario.addAll({"sexo": "masculino", "casado": true}); //insere uma lista
  print(usuario);
  print("chaves: ${usuario.keys} \nValores: ${usuario.values}\n");

  Map<int, dynamic> numeros = {0: "zero", 1: "um", 2: "dois"};
  print(numeros);
  print(numeros.map((chave, valor) => MapEntry(chave, "${valor.toUpperCase()}"))); //mapeando os valores

  for (var chave in numeros.keys) {
    print("ForIn: $chave");
  }

  for (var valor in numeros.values) {
    print("ForIn: $valor");
  }

  for (var key in numeros.keys) {
    final valor = numeros[key];
    print("ForIn: chave: ${key} valor: ${valor.toUpperCase()}");
  }
}

mapMap() {
  print("\n Map map\n");

  // transforma / seleciona os elementos de uma coleção criando uma nova do mesmo tamanho

  List<Map<String, dynamic>> carrinho = [
    {"nome": "Borracha", "preco": 3.45},
    {"nome": "Caderno", "preco": 13.49},
    {"nome": "KitLapis", "preco": 41.22},
    {"nome": "Caneta", "preco": 7.5},
  ];

  Function porcentagem(desconto) => (valor) => desconto * valor["preco"]; //closure
  final moeda = (e) => "RS ${e.toDouble().toStringAsFixed(2).replaceFirst(".", ",")}";
  //  List<String> preco1 = carrinho.map(porcentagem(0.9)).map(moeda).toList(); // não funciona
  List<String> preco1 = carrinho.map((e) => e.update("preco", (e) => e * .9)).map(moeda).toList();
  String precoMedio = (carrinho.map((e) => e["preco"]).reduce((anterior, atual) => anterior + atual) / carrinho.length).toStringAsFixed(2);
  print("Lista de preco : $preco1 \nPreco medio $precoMedio");

  List<Map<String, Object>> escola = [
    {
      "nome": "Turma T1",
      "alunos": [
        {"nome": "fernando", "nota": 8.1},
        {"nome": "leila", "nota": 9.3},
      ]
    },
    {
      "nome": "Turma T2",
      "alunos": [
        {"nome": "chloe", "nota": 8.9},
        {"nome": "bartolomeu", "nota": 7.3},
      ]
    },
  ];

  // Iterable<Object?> alunosEscola = escola.map((e) => e["alunos"]);
  // Iterable<Object?> alunosEscola = escola.map((e) => e["alunos"]).expand((element) => element); // nao funciona
  // List<dynamic> alunosEscola = escola.map((e) => e["alunos"]).expand((a) => a ).toList();
  // print("Lista ordenada: $alunosEscola");
}

everyMap() {
  print("Every map\n");

  // every faz o teste em todos os elementos com o operador logico && retornando (true ou false)

  List<Map<String, dynamic>> pessoas = [
    {"nome": "lucio", "idade": 60},
    {"nome": "leila", "idade": 31},
    {"nome": "leandro", "idade": 17},
  ];

  print(pessoas.every((e) => e.containsKey("nome")));
  print(pessoas.every((e) => e["idade"] >= 17));
  bool maiores = pessoas.every((element) => element["nome"].startsWith("l"));
  print(maiores);
}

whereMap() {
  print("Map Where");
  // where filtra os elementos da coleção criando uma nova do mesmo tamanho ou menor

  List<Map<dynamic, dynamic>> produtos = [
    {"nome": "Notebook", "preco": 2499, "fragil": true},
    {"nome": "IPad", "preco": 4199, "fragil": true},
    {"nome": "Iphone", "preco": 2299, "fragil": true},
    {"nome": "Magic Mouse", "preco": 299, "fragil": false},
  ];

  final fragil = (e) => e["fragil"] == true;
  final nome = (e) => e["nome"];
  List<dynamic> resultado = produtos.where(fragil).map(nome).toList();
  print("Produtos frageis: $resultado");

  List<Map<String, dynamic>> pessoas = [
    {"nome": "Fernando", "idade": 36},
    {"nome": "Leila", "idade": 31},
    {"nome": "Leandro", "idade": 17},
  ];

  List<Map<String, dynamic>> maiores = pessoas.where((element) => element["idade"] >= 21).toList();
  Map<String, dynamic> comecaComL = pessoas.firstWhere((e) => e["nome"].startsWith("R"), orElse: () => {});
  Map<String, dynamic> menores = pessoas.singleWhere((element) => element["idade"] < 18);
  final Function idades = (e) => e["idade"];
  final Function soma = (p, c) => p + c;
  // var media = pessoas.map(idades); não funciona
  print("Maiores: $maiores \nNomes com L: ${comecaComL} \nMenores: ${menores}");
}

reduceMap() {
  print("Maop reduce");
  // compara os elementos da coleção retornando 1 unico elemento resultante
  // ao interagir com os elementos o indice 0 se torna o anterior, indice 1 se torna o atual

  List<Map<String, dynamic>> alunos = [
    {"nome": "Fernando", "nota": 7.3, "bolsista": false},
    {"nome": "Leila", "nota": 9.2, "bolsista": false},
    {"nome": "Chloe", "nota": 9.8, "bolsista": false},
    {"nome": "Bartolomeu", "nota": 8.7, "bolsista": false},
  ];

  final Function bolsistas = (e) => e["bolsistas"];
  final Function nome = (e) => e["nome"];
  final Function notas = (e) => e["nota"];
  final Function soma = (p,c) => p +c;
  // List<dynamic> bolsistasNomes = alunos.where(bolsistas).map(nomes).toList(); //nao funciona
  // List<Map<String, dynamic>> medias = alunos.where(bolsistas).toList(); não funciona

  


}

void main(List<String> args) {
  linkedHashMap();
  mapMap();
  everyMap();
  whereMap();
  reduceMap();
}
