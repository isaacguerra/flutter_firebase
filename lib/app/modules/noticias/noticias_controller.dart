import 'package:apptestefirebase/app/shared/Interfaces/noticias_repository_interface.dart';
import 'package:apptestefirebase/app/shared/Models/noticias_model.dart';
import 'package:mobx/mobx.dart';

part 'noticias_controller.g.dart';

class NoticiasController = _NoticiasControllerBase with _$NoticiasController;

abstract class _NoticiasControllerBase with Store {
  final INoticiasRepository noticiasRepository;

  @observable
  ObservableStream<List<NoticiasModel>> noticiasList;

  _NoticiasControllerBase(INoticiasRepository this.noticiasRepository) {
    getNoticias();
  }

  @action
  getNoticias() {
    noticiasList = noticiasRepository.noticiasAll().asObservable();
  }
}
