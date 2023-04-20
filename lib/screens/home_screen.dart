import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seminario_app/providers/login_form_provider.dart';
import 'package:seminario_app/widgets/widgets.dart';

import '../services/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthBackground(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            disabledColor: Colors.grey,
            elevation: 0,
            minWidth: 300,
            color: Colors.lightBlue,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              child: const Text(
                'Iniciar Aprendizaje',
                style: TextStyle(color: Colors.white),
              ),
            ),
            onPressed: () async {
              Navigator.pushReplacementNamed(context, 'welcome');
            },
          ),
          const SizedBox(height: 40),
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            disabledColor: Colors.grey,
            elevation: 0,
            minWidth: 300,
            color: Colors.lightBlue,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              child: const Text(
                'Salir',
                style: TextStyle(color: Colors.white),
              ),
            ),
            onPressed: () async {
              final authService =
                  Provider.of<AuthService>(context, listen: false);
              await authService.logout();
              Navigator.pushReplacementNamed(context, 'login');
            },
          ),
        ],
      )),
    ));
  }
}
