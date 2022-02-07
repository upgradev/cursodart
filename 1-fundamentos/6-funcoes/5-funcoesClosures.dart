///
///closure ocorre quando uma funcao é declarada dentro do corpo de outra função
///podendo retornar as variaveis locais e da função superior
///

funcaoClosures() {
  print("Closures sem retorno\n");

  var saudacao = (String nome) {
    var mensagem = (complemento) => print("Olá $nome! $complemento ");
    mensagem('Seja bem vindo(a)');
  };
  saudacao("Ana");

  print("\nClosures com retorno\n");

  Function somar(int valorA) {
    print(valorA);
    return (valorB) {
      print(valorB);
      return valorA + valorB;
    };
  }

  var somarDez = somar(10);
  print(somarDez(5));

  Function porcentagem(desconto) => (valor) => desconto * valor;
  var descontarDez = porcentagem(0.9);
  var descontarVinte = porcentagem(.8);
  print(descontarDez(100));
  print(descontarVinte(200));

  print("\nClosures com objetos\n");

  var novoObjeto = () {
    var id = 0;
    var objetoCriado = (String nome, descricao) {
      // return 'id: ${(++id).toString().padLeft(2, '0')} nome $nome, descricao: $descricao'; //retorna
      // return {'id': (++id).toString().padLeft(2, '0'), 'nome': nome, 'descricao': descricao};
      return Objeto.fromMap({'id': (++id).toString().padLeft(2, '0'), 'nome': nome, 'descricao': descricao});
    };
    return objetoCriado;
  };
  var objeto = novoObjeto();
  print(objeto);

  var listaObjetos = [objeto('Fernando', 1.99)];
  listaObjetos.add(objeto('Iphone', 3000.00));
  listaObjetos.add(objeto('fones', 100.00));

  for (var objeto in listaObjetos) {
    // print(objeto.substring(7));
    // print(objeto.map((key, value) => MapEntry(key, (value is double) ? '${descontarDez}' : value)));
    print((objeto.descricao is num) ? descontarVinte(objeto.descricao) : objeto.descricao);
  }
}

class Objeto {
  String id, nome;
  dynamic descricao;
  Objeto({this.id = '', this.nome = '', this.descricao});
  factory Objeto.fromMap(Map<String, dynamic> map) {
    return Objeto(id: map['id'].toString(), nome: map['nome'], descricao: map['descricao']);
  }
}

void main(List<String> args) {
  funcaoClosures();
}
