import 'package:flutter/material.dart';
import '../screens/sign_in.dart';
import '../screens/sign_up.dart';
import '../screens/home.dart';

class AppRoutes {
  // Pehlay saaray possible ruotes define kr lengay
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';

  static final Map<String, WidgetBuilder> routes = {
    // yahan se jo screen pehlay ami us sequence se routes set kr dengay
    login: (context) => LoginScreen(),
    signup: (context) => SignupScreen(),
    home: (context) => HomeScreen(),
  };
}
