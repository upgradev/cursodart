import 'Calculos.dart';

///
///A variavel statica fica disponivel na propria classe em vez de suas instancias/objetos
///em metodos estaticos deve usa variaveis estaticas da classe
// variaveis estaticas podem ser acessadas sem precisar ser instanciadas classes/objetos

void main(List<String> args) {
  print("modificadores Static");

  double raio = 5;
  var calculos1 = new Calculos();
  print(calculos1.pi);
  print(calculos1.areaCirculo(raio));

  print("");

  Calculos calculos2 = new Calculos();
  print(calculos2.pi);
  print(calculos2.areaCirculo(raio));

  print("\nInstancias consomem ${identical(calculos1, calculos2) ? 'menos' : 'mais'} memorias");

  print(Calculos.piEstatico);
  print(Calculos.piEstatico * (raio * raio));
  print("Retornos iguais: ${Calculos.areDoCirculoEstatico(raio) == Calculos().areaCirculo(raio) ? 'Sim' : 'Não'} metodos diferentes");
}
