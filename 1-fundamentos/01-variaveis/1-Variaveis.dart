void main() {
  print("01.0) Variaveis");

  var valorA = 10;
  var valorB = 4;
  var valorC = 2.5;
  var resultado;
  resultado = valorA + valorB + valorC;
  print(resultado);
  print("");
  var salario = 1000, descontos = 250;
  var conta = salario - descontos;
  print(conta);
  print("");
  var numero = 3 + ((2 * 4) + (10 / 5));
  print(numero);
  print("");
  print("concatenar "
      "Strings "
      "é simples assim");

  var texto1 = '\nFernando ';
  var texto2 = "Martins";
  var texto3 = ''''\n
    Leila martins\n''';

  var nome = texto1 + texto2 + texto3;
  print(nome);

  var verdadeiro = true;
  var falso = false;
  // $ para variaveis // ${} para operações
  print('verdadeiro = ${verdadeiro}'); //interpolação
  print('Falso = ' + "$falso"); //concatenção
  print(''.runtimeType); //descobre tipo de variavel em tempo de execução
  print("");

  const pi = 3.14; //variavel constante é atribuida em tempo de compilação
  nome = 'Fernando'; //errada
  String sobrenome = 'Martins';
  int idade = 36;
  double altura = 1.67;
  bool adulto = true;

  print('\nnome: ' + "$nome \n qtde letras: ${nome.length} " + """\nSobrenome $sobrenome \n Qtde letras ${sobrenome.length}\n """);

  print(''' idade : $idade
altura: $altura
adulto: $adulto
\npi: $pi
    ''');

  dynamic variavel = 2.0;
  variavel = 2;
  variavel = 'dois';
  variavel = true;
  print(variavel);

  /* 
    "backspace" : "\b"
    "formfeed" : "\f"
    "newline": "\n"
    "return" : "\r"
    "tab": "\t"
  */
}
