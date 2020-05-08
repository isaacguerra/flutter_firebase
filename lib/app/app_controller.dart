import 'package:firebase_auth/firebase_auth.dart';
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
    this.currentUser = null;
  }
}
