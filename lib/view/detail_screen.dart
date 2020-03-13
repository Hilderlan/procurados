import 'package:flutter/material.dart';
import 'package:procurados/model/procurado.dart';

class DetailScreen extends StatelessWidget {
  final Procurado procurado;

  DetailScreen({@required this.procurado});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${procurado.nick}'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            child: Image(image: NetworkImage(procurado.photo)),
          ),
          Text(procurado.name)
        ],
      ),
    );
  }
}
