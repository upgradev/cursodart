///
/// Array é uma lista dinamica e ordena de elementos entre chaves
///
void main() {
  print("Arrays\n ");

  var textos = ['ana', 'maria'];
  var numeros = [1, 2.5, 5, 31, 36];
  var condicoes = [!false, true, false];
  print("${textos[0]} e ${textos[1]}");
  print("${textos[0]} tem ${numeros[4]}");
  print("${textos[1]} ${numeros[3] > 17 ? 'é maior de idade' : 'não é maior'}");
  // print("condicoes[3] == null: ${condicoes[3] ?? (condicoes[0] ? condicoes[1] : condicoes[2]) }");

  bool verdadeiro = !false;
  var arrayDinamico = ['texto', [], 3, 1.5, verdadeiro];
  print(arrayDinamico);
  arrayDinamico[0] = textos[0];
  arrayDinamico[1] = ['martins', 'de', 'andrade'];
  arrayDinamico[2] = numeros[2];
  arrayDinamico[3] = numeros[1];
  arrayDinamico[4] = !verdadeiro;
  print(arrayDinamico);

  print("\nArrays funções\n");

  arrayDinamico.add(condicoes[2]);
  arrayDinamico.insert(0, 'Leila');
  print(arrayDinamico);
  arrayDinamico.removeAt(1);
  print(arrayDinamico);
  arrayDinamico.removeRange(1, 4);
  arrayDinamico.remove('Leila');
  print(arrayDinamico);
  print(arrayDinamico.length);

  arrayDinamico.clear();
  // ignore: unnecessary_null_comparison
  print("$arrayDinamico ==null : ${arrayDinamico == null}");
  print("$arrayDinamico == empty : ${arrayDinamico.isEmpty}");
  // arrayDinamico.length = 1;
  print("$arrayDinamico ?? ${arrayDinamico.contains(null)}");

  numeros = [10, 5, 1, 2.25, 7.5];
  numeros.sort();
  print(numeros);
  textos = ['Fernando', 'Leila', 'Bartolomeu'];
  textos.sort((b, a) => a.compareTo(b));
  print(textos);
  textos.sort((a, b) => a.compareTo(b));
  print(textos);
}
