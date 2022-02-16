import 'package:projetos/projetos.dart' as projetos;

void main(List<String> arguments) {
  print("Teste unitarios");

  print('Hello world: ${projetos.calculate()}!');
  print('Listar nomes: ${projetos.converterEmLista("Fernando Martins")}!');
  print('Varificar maioridade: ${projetos.maioridade(-18)}');
  //fora do try cath gera exceção
  String? texto;
  assert(texto == null);

  try {
    String telefone = "12345678";
    assert(telefone.length == 9, 'O telefone deve conter 9 digitos');
  } catch (e) {
    print("exceção: $e");
  }
}
