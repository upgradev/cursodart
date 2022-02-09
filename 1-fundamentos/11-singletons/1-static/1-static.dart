/* 
*Singleton
-é um padrão de objeto para que exista apenasuma instancia de classe
-o construtor nomeado sem o construtor default impede de instanciar a classe
*Static
-a instancia pode ser acessada diretamente

*/

import 'PessoaStatic.dart';

void main(List<String> args) {
  print("Singletons static");

  print(PessoaStatic.instancia.nome);
  PessoaStatic.instancia.nome = "ana";
  print(PessoaStatic.instancia.nome);
  var p1 = PessoaStatic.instancia;
  var p2 = PessoaStatic.instancia;
  p1.nome = "leila";
  print(PessoaStatic.instancia.nome);
  p2.nome = "Chloe";
  print(PessoaStatic.instancia.nome);
  print(identical(p1, p2));
  print(p2 == PessoaStatic.instancia);



}


