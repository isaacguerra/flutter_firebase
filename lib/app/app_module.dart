import 'package:apptestefirebase/app/app_controller.dart';
import 'package:apptestefirebase/app/app_widget.dart';
import 'package:apptestefirebase/app/modules/home/home_module.dart';
import 'package:apptestefirebase/app/modules/login/login_module.dart';
import 'package:apptestefirebase/app/modules/noticias/noticias_module.dart';
import 'package:apptestefirebase/app/shared/Interfaces/noticias_repository_interface.dart';
import 'package:apptestefirebase/app/shared/Services/auth_service.dart';
import 'package:apptestefirebase/app/shared/components/my_drawer/my_drawer_controller.dart';
import 'package:apptestefirebase/app/shared/repository/noticias_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MyDrawerController()),
        Bind((i) => AppController()),
        Bind((i) => AuthService()),
        Bind<INoticiasRepository>(
            (i) => NoticiasRepository(Firestore.instance)),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
        Router('/login', module: LoginModule()),
        Router('/noticias', module: NoticiasModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
