import 'package:apptestefirebase/app/app_controller.dart';
import 'package:apptestefirebase/app/app_widget.dart';
import 'package:apptestefirebase/app/modules/home/home_module.dart';
import 'package:apptestefirebase/app/modules/login/login_module.dart';
import 'package:apptestefirebase/app/shared/components/my_drawer/my_drawer_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';


class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MyDrawerController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
        Router('/login', module: LoginModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
