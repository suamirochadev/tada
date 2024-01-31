import 'package:email_validator/email_validator.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  
  @observable
  String email = '';

  @observable
  bool emailValido = false;

  @action
  void setEmail(String v) {
    email = v;
    emailValido = EmailValidator.validate(email);
  }

  @observable
  String senha = '';

  @action
  void setSenha(String v) => senha = v;

  @observable
  bool senhaVisivel = false;

  @action
  void toggleSenhaVisivel() => senhaVisivel = !senhaVisivel;

  @computed
  bool get emailValidoSim => EmailValidator.validate(email);

  @computed
  bool get senhaValidaSim => senha.length >= 6;

  @computed
  bool get formForValido => emailValido && senhaValidaSim && !loading;

  @observable
  bool loading = false;

  @observable
  bool logado = false;

  @action
  Future<void> login() async {
    loading = true;
    await Future.delayed(const Duration(seconds: 2));

    loading = false;
    logado = true;
  }
}
