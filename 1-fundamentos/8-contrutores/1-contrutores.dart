import 'Animal.dart';
import 'Objeto.dart';
import 'Pessoa.dart';
import 'Usuario.dart';

///
///Contrutores devem ter o mesmo nome da classe
///eles sao iniciados quando instanciamos as classes, podendo fazer configuraçĩes iniciais
///

void main(List<String> args) {
  print("Construtores");
  Objeto objeto = new Objeto();
  objeto.nome = 'Mesa';
  print("nome: ${objeto.nome}");

  Animal animal = new Animal("Chloe", "Pug");
  print("nome ${animal.nome} raça: ${animal.raca} idade: ${animal.idade}\n");

  Pessoa pessoa = new Pessoa("Maria", 25, altura: 1.89);
  print("nome: ${pessoa.nome} idade: ${pessoa.idade} cor: ${pessoa.cor} altura: ${pessoa.altura}");

  Usuario usuario = new Usuario("teste@teste.com", "abc123", nome: "Leila");
  print("usuario: ${usuario.user} senha: ${usuario.senha} nome: ${usuario.nome} cargo: ${usuario.cargo}");
  usuario.autenticar();

  Usuario admin = Usuario.admin("teste@teste,com", "abc123", nome: 'Fernanda');
  print("admin: ${admin.user} senha: ${admin.senha} nome: ${admin.nome} cargo: ${admin.cargo}");
  usuario.autenticar();
}






