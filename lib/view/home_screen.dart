import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:procurados/controller/home_controller.dart';
import 'package:procurados/view/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = GetIt.I.get<HomeController>();
  
  @override
  void initState() {
    _controller.fetchProcuradoList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Procurados'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () => _controller.fetchProcuradoList,
            )
          ],
        ),
        body: Observer(
          builder: (_) => ListView.builder(
            itemCount: _controller.procurados.length,
            itemBuilder: (context, index) {
              return _procuradoCard(context, index);
            },
          ),
        ));
  }

  Widget _procuradoCard(BuildContext context, int index) {
    return InkWell(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Container(
                width: 85.0,
                height: 85.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(_controller.procurados[index].photo),
                      fit: BoxFit.cover),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        _controller.procurados[index].nick ?? "",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 2),
                        child: Text(
                          _controller.procurados[index].description ?? "",
                          style: TextStyle(fontSize: 15.0),
                          maxLines: 3,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => DetailScreen())),
      splashColor: Colors.red,
    );
  }
}
