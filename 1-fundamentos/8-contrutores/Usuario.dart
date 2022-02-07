class Usuario {
  String? user, senha, nome, cargo;
  int? idade;

  Usuario(this.user, this.senha, {this.nome, String? cargo}) {
    this.nome = (nome == null) ? 'Sem nome' : nome;
    this.cargo = (cargo == null) ? 'Usuario' : cargo;
    print("Construtor resumido com parametros nomeados default: ${this.toString()}");
  }

  Usuario.admin(this.user, this.senha, {this.nome}) {
    this.nome = (nome == null) ? 'Sem nome' : nome;
    this.cargo = 'Administrador';
    print("Construtor personalizado com parametros nomeados default: ${this.toString()}");
  }

  void autenticar() {
    var user = 'teste@teste.com';
    var senha = "abc123";
    (this.user == user && senha == senha) ? print("Usuario autenticado") : print("usuario não autenticado");
  }
}
