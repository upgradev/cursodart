import 'Candidato.dart';

///
///*regras
///ao implementar uma interface devemos utilizar todos os metodos e atributos
///No dart não tem sintaxe para interfaces, pode ser uma classe concreta ou abstrata
///Pode implementar mais de uma interface e deve sobrescrever todos os metodos e atributos
///

void main() {
  print("Interfaces\n");

  var bolsonaro = Candidato("Bolsonaro", ideologia: "direita", partido: "psl");
  bolsonaro
    ..objetivo = "Ganhar eleição"
    ..objetivosPessoais()
    ..postagem = "Vou acabar com a corrupção no Brasil!"
    ..escreverPostagem()
    ..ideologiaPolitica();
}
