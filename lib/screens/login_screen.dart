import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seminario_app/providers/login_form_provider.dart';
import 'package:seminario_app/widgets/widgets.dart';
import 'package:seminario_app/components/components.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthBackground(
            child: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 250),
          CardContainer(
              child: Column(
            children: [
              const SizedBox(height: 10),
              Text('Bienvenido',
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 30),
              ChangeNotifierProvider(
                  create: (_) => LoginFormProvider(), child: LoginForm()),
            ],
          )),
          const SizedBox(height: 50),
        ],
      ),
    )));
  }
}
