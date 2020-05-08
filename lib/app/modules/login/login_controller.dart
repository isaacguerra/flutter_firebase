import 'package:apptestefirebase/app/app_controller.dart';
import 'package:apptestefirebase/app/shared/Services/auth_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final appController = Modular.get<AppController>();
  final auth = new AuthService();

  String email = "";
  String password = "";

  @action
  void loginGoogle() {
    print("estou no login e vou logar");
    auth
        .googleLoginService()
        .then((user) {
            appController.setUser(user);
            Modular.to.pushNamed("/");
    })
        .catchError((e) => print(e));
  }

  @action
  void onChangeEmail(value) {
    print(value);
    this.email = value;
  }

  @action
  void onChangePassword(value) {
    print(value);
    this.password = value;
  }

  @action
  bool loginEmailSenha() {
    auth
        .loginEmailSenha(this.email, this.password)
        .then((user) => print(user))
        .catchError((e) => print(e));
    return true;
  }
}
