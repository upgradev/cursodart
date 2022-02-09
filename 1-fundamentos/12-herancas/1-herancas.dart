import 'Cao.dart';

/**
 * *Regras
 * uma classe pode ter somente uma herança
 * 
 * *Contrutores
 * devem obedecer a ordem dos parametros
 * parametros default devem ser nomeados ou posicionados
 * tratamento e tipagem de parametros deve ser feito na classe herdeira
 * 
 */

void main() {
  print("Heranças de atributos de metodos e de construtores\n");

  var cao = new Cao("Chloe", "Pug", "Femea");
  print("nome ${cao.nome} raca ${cao.raca} sexo ${cao.sexo} idade ${cao.idade} docil ${cao.docil}");
  cao..dormir()..alimentar()..acao();
  print("${cao.nome} ${cao.docil == true ? 'Amigavel' : 'Não amigavel'} ");
}



