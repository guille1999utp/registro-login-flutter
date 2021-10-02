import 'package:flutter/material.dart';

import 'package:registro/paginacuerpo.dart';
import 'package:registro/registro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'primero',
      routes: {
        '/': (_) => Paginacuerpo(data: 'abc'),
        'primero': (_) => Primera()
      },
    );
  }
}
