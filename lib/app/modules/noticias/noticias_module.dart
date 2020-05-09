import 'package:apptestefirebase/app/modules/noticias/noticias_controller.dart';
import 'package:apptestefirebase/app/shared/repository/noticias_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:apptestefirebase/app/modules/noticias/noticias_page.dart';

class NoticiasModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => NoticiasController(i.get<NoticiasRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => NoticiasPage()),
      ];

  static Inject get to => Inject<NoticiasModule>.of();
}
