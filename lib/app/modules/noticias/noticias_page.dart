import 'package:apptestefirebase/app/shared/Models/noticias_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'noticias_controller.dart';

class NoticiasPage extends StatefulWidget {
  final String title;
  const NoticiasPage({Key key, this.title = "Noticias"}) : super(key: key);

  @override
  _NoticiasPageState createState() => _NoticiasPageState();
}

class _NoticiasPageState
    extends ModularState<NoticiasPage, NoticiasController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(
        builder: (_) {
          if (controller.noticiasList.hasError) {
            return Center(
              child: RaisedButton(
                onPressed: controller.getNoticias,
                child: Text("Error"),
              ),
            );
          }

          if (controller.noticiasList.data == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          List<NoticiasModel> list = controller.noticiasList.data;
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (_, index) {
              NoticiasModel model = list[index];
              return ListTile(
                title: Text(model.titulo),
              );
            },
          );
        },
      ),
    );
  }
}
