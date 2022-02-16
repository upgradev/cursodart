class Carro {
  String marca, modelo;

  Carro(this.marca, this.modelo);
}

class Pessoa {
  static final Map<String, Pessoa> _pessoas = Map();
  final String nome;
  int idade;
  double peso;

  factory Pessoa(String nome, {int? idade, double? peso}) {
    if (_pessoas.containsKey(nome)) {
      return _pessoas[nome];
    }
    final novaPessoa = Pessoa._construtorPrivado(nome, idade, peso);
    _pessoas[nome] = novaPessoa;
    return novaPessoa;
  }

  Pessoa._construtorProvado(this.nome, this.idade, this.peso) {}

  static void mostrarDetalhes(String nome) {
    if (_pessoas.containsKey(nome)) {
      print("detalhes: nome: $nome idade: ${_pessoas[nome].idade} peso ${_pessoas[nome].peso}");
    } else {
      print("Não existe no map de pessoas");
    }
  }

  

}

void main(List<String> args) {
  print("Map de objetos\n");
  Carro c1 = new Carro("Honda", "Civic");
  Carro c2 = new Carro("Toyota", "Corola");
  Carro c3 = new Carro("Fiat", "Palio");

  Map<String, Carro> carros = {"0": c1, "1": c2};
  carros["2"] = c3;

  for (var i = 0; i < carros.length; i++) {
    print('For: $i ${carros["${i}"]?.modelo}');
  }
  print("");
  for (String chave in carros.keys) {
    final carro = carros[chave];
    print("Forin: $chave ${carro?.modelo}");
  }
  print("");
  carros.forEach((chave, valor) => print("Foreach: $chave ${valor.modelo}"));

  print("Map de Singletons\n");
}
