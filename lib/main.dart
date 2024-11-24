import 'package:flutter/material.dart';
import 'screens/sign_in.dart';
import 'navigation/app_routes.dart';
import '../services/auth_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';



void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authentication App',
      // Jo hmne routes wali file mein routes define kiye hue unko main mein istemaal karengay
      initialRoute: AppRoutes.login, // Initial route
      routes: AppRoutes.routes, // Centralized route configuration
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
