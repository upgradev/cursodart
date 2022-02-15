import 'dart:math';

class Pessoa {
  String nome, sobrenome;
  int? _identidade;

  Pessoa(this.nome, this.sobrenome, {int? identidade}) {
    this._identidade = (identidade == null) ? Random().nextInt(9999999) : identidade;
  }

  int? get identidade => _identidade;
}

class Vendedor {
  String nome;
  List<Venda> vendas;

  Vendedor(this.nome, this.vendas);
}

class Venda {
  String produtos;
  double preco;
  Venda(this.produtos, this.preco);
}

class Proprietario {
  String nome, endereco;
  List<Carro> carros;
  Proprietario(this.nome, this.endereco, this.carros);
}

class Carro {
  String marca, modelo, placa;
  Caracteristica caracteristica;
  List<Multa>? multas;

  Carro(this.marca, this.modelo, this.placa, this.caracteristica, {List<Multa>? multas}) {
    this.multas = multas;
  }
}

class Caracteristica {
  String tipo;
  int passageiros;
  int potencia;
  String combustivel;
  Caracteristica(this.tipo, this.passageiros, this.potencia, this.combustivel);
}

class Multa {
  String descricao, tipo;
  int pontos;
  Multa(this.descricao, this.tipo, this.pontos);
}

void main(List<String> args) {
  print("List Manipulando objetos");

  Pessoa p1 = new Pessoa("fernando", "martins", identidade: 12345678);
  Pessoa p2 = new Pessoa("leila", "martins", identidade: 87654321);

  List<Pessoa> pessoas = [p1, p2];
  pessoas.add(Pessoa("chloe", "martins"));

  for (var i = 0; i < pessoas.length; i++) {
    print("For: ${pessoas[i].nome} ${pessoas[i].sobrenome} id: ${pessoas[i].identidade}");
  }

  print("");

  for (var pessoa in pessoas) {
    print("For in: nome: ${pessoa.nome} sobrenome: ${pessoa.sobrenome} id: ${pessoa.identidade}");
  }

  print("");

  pessoas.forEach((element) {
    print("Foreach: nome: ${element.nome} sobrenome: ${element.sobrenome} id: ${element.identidade} ");
  });

  print("\n ordenando objetos\n");

  List<Vendedor> vendedores = [];
  vendedores.add(Vendedor("fernando", [Venda("Iphone X", 4199.99), Venda("Macbook pro", 7300.10), Venda("Galaxy s10", 3500.25)]));
  vendedores.add(Vendedor("leila", [Venda("Iphone 8", 3000.10), Venda("Galaxy s10", 3500.25), Venda("IPhonex", 4199.99)]));
  vendedores.add(Vendedor("chloe", [Venda("Iphone X", 4199.99), Venda("Iphone X", 4199.99), Venda("Galaxy s10", 3500.25)]));

  //organizar lista de vendas pela soma total
  // VERIFICAR O POR QUE DO ERRO NESSA VERSÃO
  // vendedores.sort((b, a) => (a.vendas.fold(0, (anterior, atual) =>  anterior! + atual.preco).compareTo(b.vendas.fold(0, (anterior, atual) => anterior! + atual.preco))));
  // vendedores.forEach((element) {
  //   print("Vendedor #${element.nome} \t ${element.vendas.length} vendas \t totalizando ${element.vendas.fold(0, (anterior, atual) => anterior! + atual.preco)} ");
  // });

  vendedores.forEach((e) => e.vendas.sort((b, a) => a.preco.compareTo(b.preco)));

  List<Proprietario> proprietarios = [];
  proprietarios.add(Proprietario("fernando", "Rua teste, 0", [
    Carro("honda", "civic", "htr8907", Caracteristica("passeio", 5, 130, "Gasolina"), multas: [
      Multa("excesso de velocidade", "Gravissima", 7),
      Multa("estacionar local proibido", "Grave", 5),
    ]),
    Carro("fiat", "palio", "lpj3542", Caracteristica("passeio", 5, 130, "Gasolina"), multas: [
      Multa("excesso de velocidade", "Gravissima", 7),
      Multa("excesso de velocidade", "Grave", 5),
    ])
  ]));

   proprietarios.add(Proprietario("leila", "Rua teste, 0", [
    Carro("honda", "civic", "htr8907", Caracteristica("passeio", 5, 130, "Gasolina"), multas: [
      Multa("excesso de velocidade", "Gravissima", 7),
      Multa("estacionar local proibido", "Grave", 5),
    ]),
    Carro("fiat", "palio", "lpj3542", Caracteristica("passeio", 5, 130, "Gasolina"), multas: [
      Multa("excesso de velocidade", "Gravissima", 7),
      Multa("excesso de velocidade", "Grave", 5),
    ])
  ]));

  proprietarios.sort((b, a) => a.nome.compareTo(b.nome));
  // proprietarios.forEach((element) => element.carros.forEach((e) => e.multas?.sort((a, b) => a.pontos.compareTo(b.pontos))));

  for (var i = 0; i < proprietarios.length; i++) {
    var carros = proprietarios[i].carros;
    for (var carro in carros) {
      carro.multas?.forEach((e) {
        print("${proprietarios[i].nome} \t ${carro.modelo} ${carro.placa} ${carro.caracteristica.tipo} \t ${e.descricao} \t ${e.tipo} - ${e.pontos} pontos");
      });
    }
  }
}
