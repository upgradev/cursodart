int calculate() {
  return 6 * 7;
}

List<String> converterEmLista(String nome) {
  return nome.split(" ").toList();
  // return nome.split(" ").map((e) => e.toUpperCase()).toList();
}

String? maioridade(int idade) {
  try {
    if (idade < 0) throw Exception("A idade não pode ser negativa");
    return idade < 14
        ? "Criança"
        : idade < 18
            ? "Adolescente"
            : "Adulto";
  } catch (e) {
    print("exceção: $e");
    return null;
  }
}
