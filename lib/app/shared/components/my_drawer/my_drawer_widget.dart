import 'package:apptestefirebase/app/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MyDrawerWidget extends StatelessWidget {
  final appCcontroller = Modular.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Drawer(
        child: ListView(
          children: <Widget>[
            if (appCcontroller.currentUser == null)
              Container(
                child: Column(
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 200,
                      child: Text(
                        'Fazer Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      onPressed: () => Modular.to.pushNamed('/login'),
                      color: Colors.blue,
                    ),
                  ],
                ),
              )
            else
              Column(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text(appCcontroller.currentUser.displayName),
                    accountEmail: Text(appCcontroller.currentUser.email),
                    currentAccountPicture: CircleAvatar(
                      radius: 30.0,
                      backgroundImage:
                          NetworkImage(appCcontroller.currentUser.photoUrl),
                      backgroundColor: Colors.transparent,
                    ),
                    onDetailsPressed: () => appCcontroller.LogOut(),
                  ),
                  ListTile(
                      leading: Icon(Icons.star),
                      title: Text("Favoritos"),
                      subtitle: Text("meus favoritos..."),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        debugPrint('toquei no drawer');
                      }),
                  ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text("Perfil"),
                      subtitle: Text("Perfil do usuário..."),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        Navigator.pop(context);
                      })
                ],
              ),
          ],
        ),
      ),
    );
  }
}
