import 'package:flutter/material.dart';

class Paginacuerpo extends StatelessWidget {
  final String data;

  Paginacuerpo({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Facebook'),
        ),
        body: Center(
          child: Column(
            children: [Text('Pagina de inicio')],
          ),
        ));
  }
}
