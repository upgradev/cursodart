void main() {
  print(" Loop For\n");

  for (var i = 0; i <= 3; i++) {
    print("contagem:  $i");
  }

  print("");

  for (var i = 15; i > 0; i -= 5) {
    print("Contagem $i");
  }

  print("");

  String nome = "Leila";
  int numero = 0;
  for (var i = numero; i < nome.length; i++) {
    // if (i % 2 == 0) {
    //   print("$i é par");
    // } else {
    //   print("$i é impar");
    // }

    print("$i ${(i % 2 == 0) ? 'é par' : 'é impar'}");
  }

  print("");

  for (var i = 0; i < nome.length; i++) {
    print("${nome.substring(i, i + 1)}"); //intervalo estuipulado
  }

  print("");

  // quais os multiplos de 2 e 3 no intervalo de 5 a 12

  for (var i = 5; i <= 12; i++) {
    if (i == 0) {
      print("$i é multiplo de todos os numero");
    } else if (i % 2 == 0 && i % 3 == 0) {
      print("$i é multiplo de 2 e 3");
    } else if (i % 3 == 0) {
      print("$i é multiplo de 3");
    } else if (i % 2 == 0) {
      print("$i é multiplo de 2 ");
    } else {
      print(i);
    }
  }

  print("");

  dynamic frutas = ["tomate", "manga", "pera", "maca"];
  for (var i = 0; i < frutas.length; i++) {
    print("for: $i ${frutas[i]}");
  }

  print("");
  // for in temos um controle automatizado crescente
  for (var fruta in frutas) {
    print("forin: $fruta");
  }
}
