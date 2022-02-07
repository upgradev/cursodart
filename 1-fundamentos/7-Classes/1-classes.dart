import 'dart:math';

///
///As classes são objetos
///as variaves são atributos
///funções são metodos
///

void main(List<String> args) {
  print('Classes/Objetos\n');

  Pessoa pessoa1 = new Pessoa();
  pessoa1.nome = 'Ana';
  pessoa1.idade = 30;
  print("Nome: ${pessoa1.nome} idade: ${pessoa1.idade}");

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = 'Leila';
  pessoa2.idade = 25;
  print("Nome: ${pessoa2.nome} idade: ${pessoa2.idade}");

  // dados inseridos pelo usuario
  Usuario usuario = new Usuario();
  usuario.usuario = "teste@teste.com";
  usuario.senha = "123456";
  usuario.autenticar();
}

class Conta {
  String nome = "Fernando";
  int numeroConta = new Random().nextInt(10000 + 1);
  double saldo = 0;

  double consultarSaldo() => (this.saldo);

  void depositar(double valorDepositado) {
    this.saldo += valorDepositado;
    print("Deposito: $valorDepositado Saldo: $saldo");
  }

  void sacar(double valorDoSaque) {
    this.saldo -= valorDoSaque;
    print("Saque: $valorDoSaque Saldo: $saldo");
  }
}

class Usuario {
  String? usuario;
  String? senha;

  void autenticar() {
    var usuario = 'teste@teste.com';
    var senha = "123456";

    if (this.usuario == usuario && this.senha == senha) {
      print("Usuario autenticado\n");
    } else {
      print("Usuario não autenticado");
    }
  }
}

class Pessoa {
  String? nome;
  int? idade;

  void info() {
    print('nome: $nome idade: $idade');
  }
}
