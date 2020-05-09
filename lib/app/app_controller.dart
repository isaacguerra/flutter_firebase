import 'package:apptestefirebase/app/shared/Services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  @observable
  FirebaseUser currentUser;

  @action
  void setUser(FirebaseUser user) {
    this.currentUser = user;
  }

  @action
  void LogOut() {
    Modular.get<AuthService>().logOut().then(this.currentUser = null);
  }
}
