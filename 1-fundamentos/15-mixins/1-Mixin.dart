///
/// * Conceito: mixin permite implementar metodos e atributos de outras classes
///
/// *Regras:
/// Devem ser implementados antes das interfaces
/// podem ser implementados a partir de i,a cçasse concreta ou abstrata
/// Não pode implementar uma classe que estenda ou extender de uma classe mixin
/// pode implementar mais de um mixin, e não é obrigatório usar todos os metodos e atributos
/// as classes que possuem metodos iguais serão sobrescritas em ordem ate a classe  herdeira
///
/// * On
/// é obrigatorio declarar sua classe como mixin
/// restringir o uso do mixinas classes que estendem ou implementam, a classe declarada
///
///

abstract class Cidadao {
  String? nome;

  Cidadao(this.nome);

  void objetivosPessoais();

  void direitosEDeveres() {
    print("Todo cidadão tem direitos e deveres");
  }
}

class Postagem {
  String? postagem;

  void escreverPostagem() {
    print("");
  }
}

abstract class Presidenciavel {
  String? partido;
  String? ideologia;

  void ideologiaPolitica();
}

// mixin

mixin Elegivel on Cidadao {
  bool elegivel = false;
  void prestacaoConta();
}

abstract class Conta {
  double? _saldo, salario = 33000;
  get saldo => this._saldo;
  set depositar(double valor) => this._saldo = valor;

  bool declaracaoRenda() => _saldo! / 12 < salario!;
}

class Candidato extends Cidadao with Elegivel, Conta implements Postagem, Presidenciavel {
  String? objetivo;

  Candidato(String? nome, {this.ideologia, this.partido}) : super(nome) {
    direitosEDeveres();
  }

  @override
  void objetivosPessoais() {
    print("$nome tem o objetivo de $objetivo");
  }

  //interfaces
  @override
  String? postagem;

  @override
  void escreverPostagem() {
    print("Postagem de $nome no facebook: $postagem");
  }

  @override
  String? ideologia;

  @override
  String? partido;

  @override
  void ideologiaPolitica() {
    // TODO: implement ideologiaPolitica
    print("$nome é o candidado com ideologia $ideologia pelo partido $partido");
  }

  @override
  void prestacaoConta() {
    // TODO: implement prestacaoConta
    elegivel = super.declaracaoRenda();
    if (elegivel) {
      print("Candidato $nome passou na prestação de contas\n Autorizado a concorrer nas eleições 2018");
    } else {
      print("Candidado $nome foi barrado na prestação de contas\n Saldo $saldo excede a renda declarada para presidente");
    }
  }
}

void main() {
  print("Mixin\n");

  var bolsonaro = Candidato("Bolsonaro", ideologia: "direita", partido: "psl");
  bolsonaro
    ..objetivo = "Ganhar eleição"
    ..objetivosPessoais()
    ..postagem = "Vou acabar com a corrupção no Brasil!"
    ..escreverPostagem()
    ..ideologiaPolitica()..depositar = 999999..prestacaoConta();
}
