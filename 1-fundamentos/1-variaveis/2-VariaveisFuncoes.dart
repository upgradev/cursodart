/* 
  *tipos de variaveis
  num(int, double), String, bool, dynamic
*/
void main() {
  print("Variaveis funções");
  num pi = 3.14;
  print(pi.floor()); //arredondar 3
  print(pi.round()); //arredonda para inteiro mas proximo menor 3
  print(pi.ceil()); //arredonda para inteiro mas proximo maior 4
  print(pi.clamp(3, 3.1)); //3.1
  print(pi.compareTo(3)); //-1 se for inferior 0 é iguais e 1 se for superior
  print(pi.remainder(3)); //0.14000000000000012
  print(pi.toInt()); //3
  print(2.toDouble()); //2.0
  print(pi.toString()); // '3.14
  print(pi.toStringAsFixed((1))); // 3.1
  print(pi.truncate()); //3 discrta o fracionario
  print(pi.isNegative);
  print(pi.isInfinite);
  print((pi / 0).isInfinite);
  print(12.gcd(16)); //mdc
  print('1'.padLeft(2, '0'));

  print('');

  String nome = 'Fernando';
  String nomeCompleto = '\t Fernando Martins';
  print(nome.toLowerCase());
  print(nome.toUpperCase());
  print(nomeCompleto.trim()); //rtemove os espaços
  print(nomeCompleto.split(" ")); // divide [	, Fernando, Martins]
  print(nome.split(''));
  print(nome.substring(3, 8)); // nando array inicial e final
  print(nome.startsWith('F'));
  print(nome.startsWith('nando', 3));
  print(nome.replaceAll('a', 'o'));
  print(nome.replaceFirst('Fer', ''));
  print(nome.replaceFirst('o', 'a'));
  print(nome.replaceRange(3, 5, '')); //retira as letras dos indices
  print((nomeCompleto.trim().split(' ')));
  print(nome.contains('f'));
  print(nome.contains('e', 1));
  print(nome.indexOf('nando')); //retirna o indice da referencia
  print(nome.length);
  print(nome.endsWith('o'));
  print(nome.compareTo('Fernando'));
  print(nome.compareTo("Fer"));
  print(nome.compareTo("Lidiane"));
  print(nome.isEmpty);
  print(double.parse("12.55"));
  print("1" is String);
  print(int.parse("12") is int);
  print(nome.lastIndexOf('a')); //4
  String sopa = 'sopa de letrinhas';
  int index = sopa.indexOf(' de ');
  print('A sopa é ${sopa.substring(index).trim()}');

  print('');

  num numero = 3.14;
  print(numero is double);
  print(numero is! double);
}
