void main(List<String> args) {
  print("Operadores Relacionais ( == != > >= < <=) ");

  var nota = 69;
  var resultado = nota >= 70;

  print("Aluno Aprovado: $resultado");

  bool testeLogico = (!false && true);
  print('Teste logico: ${3 > 1 && (3 < 2) || testeLogico}');

  print('5 == 5 && 6 > 6: ${5 == 5 && 6 > 5}');
  print('5 != 5 && 6 == 6: ${5 != 5 && 6 == 5}');
  print('5 <= 5 && 6 != 6: ${5 <= 5 && 6 != 5}');
}