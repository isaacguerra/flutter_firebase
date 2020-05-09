import 'package:apptestefirebase/app/shared/Interfaces/noticias_repository_interface.dart';
import 'package:apptestefirebase/app/shared/Models/noticias_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NoticiasRepository implements INoticiasRepository {
  final Firestore firestore;

  NoticiasRepository(this.firestore);

  @override
  Stream<List<NoticiasModel>> noticiasAll() {
    return firestore.collection('Noticias').snapshots().map((query) {
      return query.documents.map((d) {
        return NoticiasModel.fromDocuments(d);
      }).toList();
    });
  }
}
