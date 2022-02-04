void main(List<String> args) {
  print("Modulo condicionais (if else)");

  if (!true) {
    print("Verdadeiro");
  } else {
    print("false");
  }

  var idade = 17; //if sem chaves
  if (idade >= 18)
    print("maior");
  else
    print("menor");

  idade = 17;
  if (idade < 14) {
    print("criança");
  } else if (/*idade < 18 */ idade >= 14 && idade <= 17) {
    print("adolecente");
  } else {
    print("adulto");
  }

  String textoInt = '10';
  String textoDouble = '10.12345';
  int numeroInt = int.parse(textoInt);
  var numeroDouble = double.parse(textoDouble).toStringAsFixed(2);

  print("parseInt: $numeroInt parseDouble: $numeroDouble");
  print("parseString: ${numeroDouble.toString() is String}");

  double peso = 150;
  double altura = 1.83;
  var temp = peso / (altura * altura);

  print(temp);
  double imc = double.parse(temp.toStringAsFixed(2));
  print(imc);

  if (imc < 18.5) {
    print("imc $imc abaixo do peso");
  } else if (imc >= 18.5 && imc <= 25) {
    print("imc $imc peso normal");
  } else if (imc >= 25 && imc < 30) {
    print("imc $imc sobrepeso");
  } else if (imc >= 30 && imc < 35) {
    print("imc $imc obesidade grau 1");
  } else if (imc >= 35 && imc < 40) {
    print("imc $imc obesidade grau 2 ");
  } else {
    print("Imc $imc obesidade grau 3");
  }
}
