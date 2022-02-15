// Queue é uma coleção ordenada entre chaves{}, sem index, que manipula o inicio e o fim da lista

import 'dart:collection';

queue() {
  print("Queue");

  Queue<int> queue = Queue();
  print("Implementação: ${queue.runtimeType}");

  queue.addAll([20, 30]);
  queue.add(40);
  queue.addFirst(10);
  queue.addLast(50);
  queue.add(60);
  // queue.add(null); não permite o elemento null mais
  print(queue);

  queue.removeLast();
  queue.forEach((element) => print(element));
}

void main(List<String> args) {
  queue();
}
