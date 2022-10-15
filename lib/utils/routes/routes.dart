import 'package:flutter/widgets.dart';

import '../../screens/home_screen/home_screen.dart';
import '../../screens/swipe_screen/swipe_screen.dart';

class Routes {
  Routes._();

  // static varibales
  static const String splash = '/swipe';
  static const String home = '/home';
  static const String detail = '/detail';
  static const String track = '/track';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SwipeScreen(),
    home: (BuildContext context) => HomeScreen(),
  };
}
