import 'package:apptestefirebase/app/shared/Models/user_model.dart';
import 'package:mobx/mobx.dart';

part 'my_drawer_controller.g.dart';

class MyDrawerController = _MyDrawerControllerBase with _$MyDrawerController;

abstract class _MyDrawerControllerBase with Store {
  UserModel user;

  @observable
  bool logado = false;

  @action
  void increment() {}
}
