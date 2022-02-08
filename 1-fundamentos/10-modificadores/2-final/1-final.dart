/* 

Final Inicializada apenas quando acessada em tempo de execução, deve ser declarada;
em coleções final nem todo o conteudo sera final

*/

import 'Pessoa.dart';

void main(List<String> args) {
  print("Modificadores final\n");

  //objeto em queda livre 5s para chegar no solo, velocidade maxima desse objeto

  final gravidade = 9.8;
  int tempo = 5;
  double velocidade = gravidade * tempo;
  print("Velocidade mx: ${velocidade} m/s");

  for (int i = 1; i <= 3; i++) {
    final indice = i; //cada loop esta sendo criada
    print("contagem ${indice}");
  }

  var pessoa = Pessoa("Fernando", ['Leila', 'Chloe']);
  pessoa.nome = 'Fernando martins';
  // pessoa.familiares = []; //erro atributo final
  print("nome: ${pessoa.nome} familiares: ${pessoa.familiares}");
}
