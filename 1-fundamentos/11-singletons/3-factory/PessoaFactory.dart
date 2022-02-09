import 'dart:math';

class PessoaFactory {
  static final PessoaFactory instancia = PessoaFactory._construtorNomeado("undefined");
  String? nome;

  factory PessoaFactory() => instancia;
  PessoaFactory._construtorNomeado(this.nome) {
    //configurações iniciais
  }
}

class PessoaInstancia {
  static PessoaInstancia? _instancia; //retirar _ para usar o singleton
  String? nome;
  final int _idadentidade;

  factory PessoaInstancia({String nome = "indefinido", int? identidade}) {
    identidade = (identidade == null) ? Random().nextInt(999999999 + 1) : identidade;
    return _instancia ??= new PessoaInstancia._construtorNomeado(nome, identidade);
  }

  PessoaInstancia._construtorNomeado(this.nome, this._idadentidade) {}

  get identidade => _idadentidade;

}
