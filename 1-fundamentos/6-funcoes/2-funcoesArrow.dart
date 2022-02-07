///
/// funções arrow tem o retorno implicito
///

funcaoArrow() {
  print("Funcao Arrow");

  String conceito() => "função arrow com retorno implicito";
  String somarValores(int valorA, int valorB) => "Soma: $valorA + $valorB = ${valorA + valorB}";
  String verificarMaioridade(String nome, int idade) => (idade >= 18) ? '$nome é maior de idade' : '$nome não é maior de idade';
  String calcularAreaCirculo(double raio) => "Area do circulo ${3.14 * (raio * raio)}";
  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 0;
  void calcularSalario(String nome, double salario, double bonus, int faltas) {
    var total = (salario * desconto(faltas)) + bonus;
    print("Empregado: $nome Salario: $total");
  }

  print(conceito());
  print(somarValores(2, 3));
  print(verificarMaioridade("Ana", 13));
  print(calcularAreaCirculo(2));
  calcularSalario("fernando", 900, 100, 2);
}

void main(List<String> args) {
  funcaoArrow();
}
