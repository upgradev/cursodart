class Animal {
  String? idade;
  bool? docil;

  Animal(this.idade, {this.docil}) {
    // docil ??= false; // fazer tratamento na classe herdeira
  }

  void dormir() {
    print("Dorme como um animal");
  }
}