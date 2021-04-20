import 'package:devquiz/application/screens/home/home.screen.dart';
import 'package:devquiz/application/screens/splash/splash.screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};