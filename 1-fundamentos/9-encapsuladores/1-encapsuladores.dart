import 'Conta.dart';
import 'Usuario.dart';

///
///são usados para proteger os atributos e variaveis
///Get é usado para acessar e o Set é usado para alterar
///atributos ou variaveis com underline são privados Ex: _saldo
///
///

void main() {
  print("Encapsuladores\n");

  var usuario = new Usuario("Fernando", "abc123");
  usuario
    ..senha = "123"
    ..alteracao = true
    ..senha = '123456';
  print("nome ${usuario.nome} senha ${usuario.senha}");

  var conta = Conta("Leila martin");
  conta
    ..deposito = 900
    ..deposito = 450
    ..saque = 450
    ..saque = 550
    ..saque = 500;

  print("");

  conta
    ..limite = 700
    ..alterarLimite = true
    ..limite = 1000
    ..alterarLimite = false;

  print("");
  conta
    ..saque = 950
    ..saque = 850;

  Conta contavip = Conta.vip("Maria clara", limite: 12500);
  contavip
    ..deposito = 15000
    ..saque = 15000
    ..limite = 15000
    ..saque = 15000;
  print(contavip.informacao);
}

class Teste {
  String? _nome;

  String? get nome => _nome;

  set nome(String? nome) {
    _nome = nome;
  }
}
