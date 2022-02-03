void main() {
  print("Operadores Logicos (&& || !)");

  /// operador && somente se ambas as confirmações for true o retorno sera true
  /// operador || precisa somente de uma afirmação verdadeira para retornar true
  /// opeador ! inverte valor

  var verdadeiro = false;
  print(verdadeiro);
  verdadeiro = !false;
  print(verdadeiro);
  bool falso = !true;
  print(falso);
  print("verdadeiro = $verdadeiro Falso = $falso");
  print("Operador (!) !true = ${!true} !false = ${!false}");

  bool teste1 = verdadeiro || verdadeiro;
  bool teste2 = verdadeiro || falso;
  bool teste3 = falso || falso;

  print("Operador (||) ${teste1} - ${teste2} - ${teste3} ");
  print("----");

  bool teste4 = verdadeiro && verdadeiro;
  bool teste5 = verdadeiro && falso;
  bool teste6 = falso && falso;

  print("Operador (&&) ${teste4} - ${teste5} - ${teste6} ");
  bool operacao = (1 <= 2) && (3 > 2);
  print(operacao);

  operacao = !(1 > 2) && ((3 < 2) || falso);
  print(operacao);


}
