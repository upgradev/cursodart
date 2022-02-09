import 'PessoaFactory.dart';

/**
 * *Singleton
 * é um padrão de objeto para que exista apenasuma instancia de classe
 * o construtor nomeado privado sem o construtor default impede de instanciar a classe
 * *Factory
 * Contrutor factory é usado para retornar/manter a instancia original
 * Construtor factory é capaz de retornar valores
 * 
 */

void singletonFactory() {
  print("Singleton Factory");

  var p1 = new PessoaFactory();
  print(p1.nome);
  p1.nome = "Fernando";
  print(PessoaFactory.instancia.nome);
  PessoaFactory.instancia.nome = "Leila";
  print(p1.nome);
  var p2 = PessoaFactory();
  p2.nome = "Chloe";
  print(PessoaFactory.instancia.nome);
  print(identical(p1, PessoaFactory.instancia));
  print(p2 == PessoaFactory.instancia);

}

singletonInstancia(){

  print("Singleton Instancia");
  var p1= PessoaInstancia(nome: "Fernando");
  print("nome: ${p1.nome} id: ${p1.identidade}");
  var p2 = PessoaInstancia(nome: "Leila", identidade: 12345678);
  print("nome: ${p2.nome} id: ${p2.identidade}");
  p2.nome = "Fernando martins";
  print("nome: ${p1.nome} id: ${p1.identidade}");
  print(identical(p1, p2));
  // print(p2 == PessoaInstancia.instancia);

}


void main(){
  singletonFactory();
  singletonInstancia();
}

