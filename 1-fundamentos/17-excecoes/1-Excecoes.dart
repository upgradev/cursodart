/* 
Tratamento de exceções
try: usado para testar uma logica
catch: capturar erros na logica try
on: captura especificos/conhecidos na logica try
throw exception: exceção criada pelo usuario e tratada no catch
finally: executado ao final try/catch com exceção ou não Utilizado libera recursos na logica try
*/

caso1() {
  print("Try catch\n");
  //quando vc desconhece a exceção

  try {
    int resultado = 1 ~/ 0;
    print("resultado: $resultado");
  } catch (e) {
    print("exceção $e");
  }
}

caso2() {
  print("on\n");
  //quando vc conhece a exceção

  try {
    int resultado = 1 ~/ 0;
    print("resultado: $resultado");
  } on IntegerDivisionByZeroException {
    print("Exceção: não é possivel dividir por zero");
  } catch (e) {
    print("exceção $e");
  }
}

caso3() {
  print("\nStack Trace\n");
  //quer descobrir eventos ocorridos antes da exceção

  try {
    int resultado = 1 ~/ 0;
    print("resultado: $resultado");
  } catch (e, s) {
    print("exceção $e");
    print("Stack Trace $s");
  }
}

caso4() {
  print("\nFinally\n");
  //fazer tratamentos apos execução do try catch, serve para liberar recursos utilizados na logica try catch

  try {
    int resultado = 1 ~/ 0;
    print("resultado: $resultado");
  } catch (e) {
    print("exceção $e");
  } finally {
    print("finally: com ou sem exceção finally sera executada");
  }
}

caso5() {
  print("\nThrow exception\n");
  //fazer tratamentos apos execução do try catch, serve para liberar recursos utilizados na logica try catch

  try {
    int valorA = 1;
    int valorB = 0;
    double resultado = valorA / valorB;
    if (resultado.isFinite) throw Exception("A variavel valorB deve ser diferente de zero");
    print("resultado: $resultado");
  } catch (e) {
    print("exceção $e");
  } finally {
    print("finally: com ou sem exceção finally sera executada");
  }
}

void main(List<String> args) {
  print("tratamento de exceções\n");

  caso1();
  caso2();
  caso3();
  caso4();
  caso5();
}
