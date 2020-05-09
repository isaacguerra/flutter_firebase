import 'package:apptestefirebase/app/shared/Models/noticias_model.dart';

abstract class INoticiasRepository {
  Stream<List<NoticiasModel>> noticiasAll();
}
