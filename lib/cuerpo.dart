import 'package:flutter/material.dart';

Widget cuerpo(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(10),
    child: Column(
      children: <Widget>[
        SizedBox(height: 10),
        usuario(),
        SizedBox(height: 10),
        password(),
        SizedBox(height: 20),
        ingresar(context),
      ],
    ),
  );
}

Widget usuario() {
  return TextField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Usuario',
        icon:
            Icon(Icons.account_circle, color: Color.fromRGBO(66, 103, 178, 1))),
  );
}

Widget password() {
  return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Contraseña',
        icon: Icon(Icons.lock_outline_rounded,
            color: Color.fromRGBO(66, 103, 178, 1)),
      ));
}

Widget ingresar(BuildContext context) {
  return RaisedButton(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    color: Color.fromRGBO(66, 103, 178, 1),
    onPressed: () {
      Navigator.of(context).pushNamed('/');
    },
    child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Text('Ingresar',
            style: TextStyle(fontSize: 20, color: Colors.white))),
  );
}
