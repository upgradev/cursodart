void main(List<String> args) {
  print("For labels");

  for (var i = 0; i < 2; i++) {
    // i = 0
    for (var j = i; j < 2; j++) {
      // j = 0
      for (num k = j; k < 2; k++) {
        // k =0
        print("i: $i j: $j k: $k");
      }
    }
  }

  print("for com brake e rotulos (labels)");

  // break encerra o loop e o indice zera
  loopExterno:
  for (var i = 0; i < 3; i++) {
    // i =0
    print("loop externo: i: $i");
    loopInterno:
    for (var j = 0; j < 3; j++) {
      // j = 0
      print("loop Interno: i: $i j: $j");
      if (j > 2) break;
      if (i == 1) break loopInterno;
      if (i == 2) break loopExterno;
      print("loopCompleto");
    }
  }

  print("for com continue e rotulos (labels)");

  loopExterno:
  for (int i = 1; i <= 2; i++) {
    // i =0
    print("loopExterno: i: $i");
    loopInterno:
    for (int j = 0; j <= 3; j++) {
      print("loopInterno: i: $i j: $j");
      if (i == 1 && j == 1) continue loopInterno;
      if (i == 2 && j == 2) continue loopExterno;
      print("loop completo");
    }
  }
}
