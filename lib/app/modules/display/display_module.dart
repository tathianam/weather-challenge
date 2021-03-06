import 'package:openweather/app/modules/display/display_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:openweather/app/modules/display/display_page.dart';

class DisplayModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DisplayController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => DisplayPage()),
      ];

  static Inject get to => Inject<DisplayModule>.of();
}
