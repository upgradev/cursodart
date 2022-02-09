import 'Cao.dart';

/**
 * *Metodos (override / sobreposicao != overlog /sobrecarga)
 * 
 * *Contrutores
 * Super se refere ao construtor da classe herdeira
 * 
 * *Classes Abstratas
 * nao podem ser instanciadas servem como modelo
 * metodos sem escopo devem ser sobrescritos como classes herdeiras
 * 
 */

void main(List<String> args) {
  print("Sobrescrita de metodos atributos e construtores");

  var cao = Cao.domestico("Chloe", "Pug", "Femea");
  print("nome ${cao.nome} raca ${cao.raca} sexo ${cao.sexo} idade ${cao.idade} docil ${cao.docil}");
  print("desenvolvimento ${cao.desenvolvimento} tipo ${cao.coluna == true ? 'Vertebrado' : 'Invertebrado'}");
  cao
    ..dormir()
    ..alimentar()
    ..reproduzir()
    ..acao();
  print(cao);
}
