import 'package:projetos/projetos.dart';
import 'package:test/test.dart';

void main() {
  //testes em variaveis
  test("converter string em array", () {
    String texto = "Fernando,Leila,Chloe";
    expect(texto.split(","), equals(["Fernando", "Leila", "Chloe"]));
  });

  //teste em funções

  test('calculate', () {
    expect(calculate(), 42);
  });

  test("ConverterEmLista", () => expect(converterEmLista("Leila Martins"), equals(["Leila", "Martins"])));

  test("VerificarMaioridade", () {
    expect(maioridade(18), "Adulto");
    expect(maioridade(17), "Adolescente");
    expect(maioridade(13), "Criança");
  });
}
