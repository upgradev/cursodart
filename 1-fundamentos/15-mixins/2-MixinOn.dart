abstract class Artista {
  void acao() {
    print("Performista");
  }
}

// mixins

mixin Cantor on Artista {
  void acao() {
    print("Cantar");
  }
}

class Dancarino {
  void acao() {
    print("Dança");
  }
}

abstract class Acao {
  void executar();
}

// classes concretas
class Musico extends Artista with Dancarino, Cantor implements Acao {
  void acao() => print("Compoe");

  @override
  void executar() {
    super.acao();
    acao();
  }
}

class Mc with Dancarino implements Acao{
  void acao() => print("Mixar");

  @override
  void executar() {
    super.acao();
    acao();
  }
}

//a classe mc não pode cantar pois não extends de artista

void main(List<String> args) {
  print("Mixin On");

  Musico musico = new Musico();
  musico.executar();

  Mc mc = new Mc();
  mc.executar();
}
