import 'Mamiferos.dart';

class Cao extends Mamiferos {
  String? nome;
  String? raca;

  Cao.domestico(this.nome, this.raca, String? sexo, {String idade = "indefinida", bool docil = true}) : super.placentarios(sexo, idade, docil: docil);
  Cao.selvagem(this.nome, this.raca, String? sexo, {idade = "indefinida", docil = false}) : super.placentarios(sexo, idade, docil: docil);

  @override
  void dormir() {
    //sobrescreve o metodo da classe super
    print("Dorme como um cao");
  }

  // @override opcional a sintaxe override no dart
  void alimentar() {
    super.alimentar(); //implemeta o escopo do metodo herdado
    print("Cão");
  }

  @override
  void reproduzir() {
    print("Reproduz como um cao");
  }

  void acao() {
    print("late como um cao");
  }

  String toString() {
    return "Instance of ${this.runtimeType} nome $nome raça: $raca sexo: $sexo";
  }
}
