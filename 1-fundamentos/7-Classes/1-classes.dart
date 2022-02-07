import 'Conta.dart';
import 'Pessoa.dart';
import 'Usuario.dart';

///
///As classes são objetos
///as variaves são atributos
///funções são metodos
///

void main() {
  print('Classes/Objetos\n');

  Pessoa pessoa1 = new Pessoa();
  pessoa1.nome = 'Ana';
  pessoa1.idade = 30;
  print("Nome: ${pessoa1.nome} idade: ${pessoa1.idade}");

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = 'Leila';
  pessoa2.idade = 25;
  print("Nome: ${pessoa2.nome} idade: ${pessoa2.idade}");

  //operador em cascata permite emitir varias chamadas por meio de um objeto
  var pessoa3 = Pessoa();
  pessoa3
    ..nome = 'Cloe'
    ..idade = 1
    ..info();

  // dados inseridos pelo usuario
  Usuario usuario = new Usuario();
  usuario.usuario = "teste@teste.com";
  usuario.senha = "123456";
  usuario.autenticar();

  Conta conta = new Conta();
  print("Nome: ${conta.nome} N Conta: ${conta.numeroConta} Saldo: ${conta.consultarSaldo()} } ");
  conta.calcularSalario(950, 150, 2);
  conta.depositar(150);
  conta.sacar(50);
}
