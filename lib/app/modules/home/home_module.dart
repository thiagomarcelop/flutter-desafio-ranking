import 'package:flutter_desafio_ranking/app/modules/home/repositories/home_repository.dart';
import 'package:flutter_desafio_ranking/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_desafio_ranking/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeRepository()),
        Bind((i) => HomeController(i.get<HomeRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
