import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import '../navigation/app_routes.dart';

class HomeScreen extends StatelessWidget {
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    var currentUser = _authService.getCurrentUser();

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await _authService.logout();
              Navigator.pushNamedAndRemoveUntil(
                  context, AppRoutes.login, (route) => false);
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Welcome, ${currentUser?.displayName ?? 'Guest'}!'),
      ),
    );
  }
}
