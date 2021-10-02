import 'package:flutter/material.dart';
import 'package:registro/batabase.dart';
import 'cuerpo.dart';

class Primera extends StatefulWidget {
  Primera({Key key}) : super(key: key);

  @override
  _PrimeraState createState() => _PrimeraState();
}

class _PrimeraState extends State<Primera> {
  @override
  Widget build(BuildContext context) {
    Datos.db.database;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(66, 103, 178, 1),
          title: Text('Facebook'),
        ),
        body: Center(
          child: cuerpo(context),
        ),
      ),
    );
  }
}
