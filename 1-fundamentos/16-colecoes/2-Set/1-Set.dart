// coleção de elementos unicos e ordenados entre chaves {}. Não tem acesso a indice

import 'dart:collection';

linkedHashSet() {
  print("LinkedHashSet == Set");

  Set<int> setInt = Set();
  print("Implementação : ${setInt.runtimeType}");
  // setInt[0] = 0; //não tem acesso a indice
  setInt.add(13);
  setInt.add(13);
  // setInt.add(null); na nova versão do dart não pode conter null
  setInt.add(17);
  setInt.add(17);
  setInt.remove(13);
  print(setInt);

  for (var i = 0; i < setInt.length; i++) {
    // print(setInt[i]); //não temos acesso ao indices direto
    print("For: ${setInt.elementAt(i)}");
  }

  for (var elemento in setInt) {
    print("for in: ${elemento}");
  }

  setInt.forEach((element) => print("foreach ${element}"));

  Set<int> listaA = {0, 1, 2, 3, 4};
  Set<int> listaB = {3, 4, 5, 6, 7};
  print("Diferença ${listaA.difference(listaB)}");
  print("Uniao ${listaA.union(listaB)}");
  print("Interceção ${listaA.intersection(listaB)}");
  print("lookup ${listaA.lookup(5)}");
}

hashSet() {
  print("\nHashSet ");
  // coleção de elementos unicos e desordenados
  HashSet<String> hashSet1 = HashSet();
  HashSet<int> hashSet2 = HashSet();
  HashSet<int> hashSet3 = HashSet();
  // print("Implementação: ${hashSet1.runtimeType}");
  hashSet1.add("A");
  hashSet1.add("B");
  hashSet1.add("C");
  hashSet1.add("D");
  // hashSet1..add(null); //nao podemos adicionar mais null
  print("String ${hashSet1}");

  hashSet2.add(1); //com uma casa decimal se mantem ordenada
  hashSet2.add(2);
  hashSet2.add(3);
  print("Inteiro com uma casa decimal $hashSet2");

  hashSet3.add(11); //com duas casas decimais não se matem ordenada
  hashSet3.add(22);
  hashSet3.add(33);
  print("inteiro com duas casas decimais $hashSet3");

  for (var i = 0; i < hashSet1.length; i++) {
    print("For com hashset1: ${hashSet1.elementAt(i)}");
  }

  for (var elemento in hashSet2) {
    print("for in hashSet2: ${elemento}");
  }

  hashSet3.forEach((element) => print("foreach hashset3 ${element}"));
}

splayTreeSet() {
  print("SplayTreeSet");
  // SplayTreeSet organiza automaticamente os elementos em ordem crescente
  // por ser uma arvore comparações não pode conter elementos null

  SplayTreeSet<String> splayTreeSet = SplayTreeSet();
  print("Interpolação: ${splayTreeSet.runtimeType}");

  splayTreeSet.add("Info1");
  splayTreeSet.add("Info3");
  splayTreeSet.add("Info");
  splayTreeSet.add("Info2");
  // splayTreeSet.add(null); não permite
  print("$splayTreeSet");

  for (var i = 0; i < splayTreeSet.length; i++) {
    print("For ${splayTreeSet.elementAt(i)}");
  }

  for (var elemento in splayTreeSet) {
    print("for I: $elemento");
  }

  splayTreeSet.forEach((element) => print("Foreach: $element"));

}

void main(List<String> args) {
  linkedHashSet();
  hashSet();
  splayTreeSet();
}
