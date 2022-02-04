void main(List<String> args) {
  print("Operadores Aritmeticos (+ - * / ~/ %) incremento (+= ++) assignação (= ??) \n");

  var peso = 10;
  peso = peso + 5;
  peso += 5;
  peso++; //incremento 1
  print(peso);

  var a,b,c,d,e,f;
  a = 3;
  b = ++a; //incrementa a antes q b receba  valor
  print("a: $a b: $b");

  c = ++a / --b;
  print("a: $a b: $b");
  print(c);

  d= a ~/ b; //divisão inteira retorna numero inteiro
  print("c: $c d: $d");

  var valorA = 9, valorB =2;
  print("ex: 8 ~/ 2 = ${valorA ~/ valorB}");

  e =1;
  f = e;
  f = null;
  f ??= ++e; //verifica o valor a esquerda se for null retorna o valor da direita no caso e
  print("e: $e f $f");

  var x, y, z;
  z = 1;
  x = y ?? z;
  print("x: $x");
  print("y: $y");

  var nome = null;
  print("nome: ${nome ?? 'Fernando'}\n"); // se a varivael for numa recebe a string

  var numero = 12;
  var par = numero % 2 == 0; //mostra o resto da divisão
  var impar = numero % 2 != 0; 
  var positivo = numero >= 0;
  var negativo = numero < 0;
  print("numero: $numero par: $par impar: $impar positivo: $positivo negativo: $negativo");

  var multiplo = 3;
  print("numero: $numero é multiplo de $multiplo? ${numero % multiplo == 0} ");

  int dividendo = 19, divisor = 4;
  double quociente = dividendo / divisor;
  int resto = dividendo % divisor;
  bool exata = resto == 0;

  print("quociente: $quociente exata: $exata resto: $resto\n");
  


}