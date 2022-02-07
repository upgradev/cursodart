class Usuario {
  String? usuario;
  String? senha;

  void autenticar() {
    var usuario = 'teste@teste.com';
    var senha = "123456";

    if (this.usuario == usuario && this.senha == senha) {
      print("Usuario autenticado\n");
    } else {
      print("Usuario não autenticado");
    }
  }
}
