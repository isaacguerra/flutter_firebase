import 'package:cloud_firestore/cloud_firestore.dart';

class NoticiasModel {
  String uid;
  String userId;
  String titulo;
  String corpo;
  final DocumentReference reference;

  NoticiasModel({this.reference, this.titulo, this.corpo, this.userId});

  factory NoticiasModel.fromDocuments(DocumentSnapshot doc) {
    return NoticiasModel(
        titulo: doc['titulo'],
        corpo: doc['corpo'],
        userId: doc['userId'],
        reference: doc.reference);
  }
}
