import 'package:flutter/material.dart';
import 'package:procurados/model/procurado.dart';
import 'package:procurados/model/procurados_test.dart';
import 'package:procurados/view/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Procurado> procurados;

  @override
  void initState() {
    procurados = ProcuradosTest.procurados;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Procurados'),
      ),
      body: ListView.builder(
        itemCount: procurados.length,
        itemBuilder: (context, index) {
          return _procuradoCard(context, index);
        },
      ),
    );
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
                      image: NetworkImage(procurados[index].photo),
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
                        procurados[index].nick ?? "",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 2),
                        child: Text(
                          procurados[index].description ?? "",
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
      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailScreen())),
      splashColor: Colors.red,
    );
  }
}
