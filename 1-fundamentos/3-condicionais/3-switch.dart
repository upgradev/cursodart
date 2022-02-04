void main() {
  print("Swicth");

  String operacao = '/'; // + - * /
  double numeroA = 12;
  double numeroB = 3;

  switch (operacao) {
    case '+':
      print("Resultado: ${numeroA + numeroB}");
      break;
    case '-':
      print("Resultado: ${numeroA - numeroB}");
      break;
    case '*':
      print("Resultado: ${numeroA * numeroB}");
      break;
    case '/':
      print("Resultado: ${numeroA / numeroB}");
      break;
    default:
      print("Opetação invalida");
  }

  int dia = 9;
  switch (dia) {
    case 0:
      print("Domingo");
      break;
    case 1:
      print("Segunda");
      break;
    case 2:
      print("Terça");
      break;
    case 3:
      print("Quarta");
      break;
    case 4:
      print("Quinta");
      break;
    case 5:
      print("Sexta");
      break;
    case 6:
      print("Sabado");
      break;
    default:
      print("Dia da semana invalido");
  }
}
