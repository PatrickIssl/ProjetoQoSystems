class Conta{

 int _id;
 String _nome;
 String _cpf;
 String _email;
 String _dataNascimento;
 String _genero;
 String _telefone;
 String _cargo;
 String _empresa;
 String _endereco;

 int _idconta;
 String _conta;
 String _senha;
 String _mfa;

 int get id => _id;

  set id(int value) {
    _id = value;
  }

 String get nome => _nome;

 String get mfa => _mfa;

  set mfa(String value) {
    _mfa = value;
  }

  String get senha => _senha;

  set senha(String value) {
    _senha = value;
  }

  String get conta => _conta;

  set conta(String value) {
    _conta = value;
  }

  int get idconta => _idconta;

  set idconta(int value) {
    _idconta = value;
  }

  String get endereco => _endereco;

  set endereco(String value) {
    _endereco = value;
  }

  String get empresa => _empresa;

  set empresa(String value) {
    _empresa = value;
  }

  String get cargo => _cargo;

  set cargo(String value) {
    _cargo = value;
  }

  String get telefone => _telefone;

  set telefone(String value) {
    _telefone = value;
  }

  String get genero => _genero;

  set genero(String value) {
    _genero = value;
  }

  String get dataNascimento => _dataNascimento;

  set dataNascimento(String value) {
    _dataNascimento = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get cpf => _cpf;

  set cpf(String value) {
    _cpf = value;
  }

  set nome(String value) {
    _nome = value;
  }

 Conta(
      this._id,
      this._nome,
      this._cpf,
      this._email,
      this._dataNascimento,
      this._genero,
      this._telefone,
      this._cargo,
      this._empresa,
      this._endereco,
     this._idconta,
      this._conta,
      this._senha,
      this._mfa);
}