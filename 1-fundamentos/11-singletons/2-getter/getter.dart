import 'PessoaGetter.dart';

/**
 * *Singleton
-é um padrão de objeto para que exista apenasuma instancia de classe
-o construtor nomeado privado sem o construtor default impede de instanciar a classe
* *getter
-a _instancia privada é accessada atraves do get
 * 
 */

void main(List<String> args) {
  print('Singleton getter\n');
  print(PessoaGetter.instancia.nome);
  PessoaGetter.instancia.nome = 'Ana';
  print(PessoaGetter.instancia.nome);
  var p1 = PessoaGetter.instancia;
  var p2 = PessoaGetter.instancia;
  p1.nome = "Leila";
  print(PessoaGetter.instancia.nome);
  p1.nome = "chloe";
  print(PessoaGetter.instancia.nome);
  print(identical(p1, p2));
  print(p2 == PessoaGetter.instancia);

}
