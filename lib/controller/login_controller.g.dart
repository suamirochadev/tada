// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginController on LoginControllerBase, Store {
  Computed<bool>? _$emailValidoSimComputed;

  @override
  bool get emailValidoSim =>
      (_$emailValidoSimComputed ??= Computed<bool>(() => super.emailValidoSim,
              name: 'LoginControllerBase.emailValidoSim'))
          .value;
  Computed<bool>? _$senhaValidaSimComputed;

  @override
  bool get senhaValidaSim =>
      (_$senhaValidaSimComputed ??= Computed<bool>(() => super.senhaValidaSim,
              name: 'LoginControllerBase.senhaValidaSim'))
          .value;
  Computed<bool>? _$formForValidoComputed;

  @override
  bool get formForValido =>
      (_$formForValidoComputed ??= Computed<bool>(() => super.formForValido,
              name: 'LoginControllerBase.formForValido'))
          .value;

  late final _$emailAtom =
      Atom(name: 'LoginControllerBase.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$emailValidoAtom =
      Atom(name: 'LoginControllerBase.emailValido', context: context);

  @override
  bool get emailValido {
    _$emailValidoAtom.reportRead();
    return super.emailValido;
  }

  @override
  set emailValido(bool value) {
    _$emailValidoAtom.reportWrite(value, super.emailValido, () {
      super.emailValido = value;
    });
  }

  late final _$senhaAtom =
      Atom(name: 'LoginControllerBase.senha', context: context);

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  late final _$senhaVisivelAtom =
      Atom(name: 'LoginControllerBase.senhaVisivel', context: context);

  @override
  bool get senhaVisivel {
    _$senhaVisivelAtom.reportRead();
    return super.senhaVisivel;
  }

  @override
  set senhaVisivel(bool value) {
    _$senhaVisivelAtom.reportWrite(value, super.senhaVisivel, () {
      super.senhaVisivel = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: 'LoginControllerBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$logadoAtom =
      Atom(name: 'LoginControllerBase.logado', context: context);

  @override
  bool get logado {
    _$logadoAtom.reportRead();
    return super.logado;
  }

  @override
  set logado(bool value) {
    _$logadoAtom.reportWrite(value, super.logado, () {
      super.logado = value;
    });
  }

  late final _$loginAsyncAction =
      AsyncAction('LoginControllerBase.login', context: context);

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  late final _$LoginControllerBaseActionController =
      ActionController(name: 'LoginControllerBase', context: context);

  @override
  void setEmail(String v) {
    final _$actionInfo = _$LoginControllerBaseActionController.startAction(
        name: 'LoginControllerBase.setEmail');
    try {
      return super.setEmail(v);
    } finally {
      _$LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String v) {
    final _$actionInfo = _$LoginControllerBaseActionController.startAction(
        name: 'LoginControllerBase.setSenha');
    try {
      return super.setSenha(v);
    } finally {
      _$LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleSenhaVisivel() {
    final _$actionInfo = _$LoginControllerBaseActionController.startAction(
        name: 'LoginControllerBase.toggleSenhaVisivel');
    try {
      return super.toggleSenhaVisivel();
    } finally {
      _$LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
emailValido: ${emailValido},
senha: ${senha},
senhaVisivel: ${senhaVisivel},
loading: ${loading},
logado: ${logado},
emailValidoSim: ${emailValidoSim},
senhaValidaSim: ${senhaValidaSim},
formForValido: ${formForValido}
    ''';
  }
}
