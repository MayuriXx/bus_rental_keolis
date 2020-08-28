import 'package:bus_rental_keolis/components/app/viewmodel.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ...services,
  ...datas,
  ...repositories,
  ...usescases,
];

List<SingleChildWidget> services = [];

List<SingleChildWidget> datas = [];

List<SingleChildWidget> repositories = [

];

List<SingleChildWidget> usescases = [

];

class ViewModelBuilder {
  static final _instances = {

  };

  static ViewModel instanciate(Type type) {
    return _instances[type]();
  }
}