import 'package:mobx/mobx.dart';
import 'package:procurados/model/procurado.dart';
import 'package:procurados/services/api.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final _api = Api();

  @observable
  ObservableList<Procurado> procurados;

  _HomeControllerBase(){
    //fetchProcuradoList(); // Inicializa logo a lista no construtor
  }

  @action
  fetchProcuradoList(){
    _loadProcurados().then((procuradosList){
      procurados = procuradosList.asObservable();
    });
  }

  Future<List<Procurado>> _loadProcurados() async {
    List list = await _api.getAllProcurados();
    List<Procurado> procuradosAux = List();

    for(Map<String, dynamic> json in list){      
      procuradosAux.add(Procurado.fromJson(json));
    }

    return procuradosAux;
  }
}
