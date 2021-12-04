import 'package:event_bus/event_bus.dart';
import 'EventModels/EventLogin.dart';

EventBus eventBus = EventBus();

class EventBusUtils {

  static void eventLogin() {
    var _event = EventLogin(isLogin: true);
    eventBus.fire(_event);
  }
}
