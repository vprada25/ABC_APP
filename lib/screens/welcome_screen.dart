import 'package:flutter/material.dart';
import 'package:seminario_app/widgets/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthBackground(
            child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _infoWidget(context),
          const SizedBox(height: 40),
        ],
      ),
    )));
  }
}

_infoWidget(BuildContext context) {
  return Container(
      alignment: Alignment.center,
      width: 400,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Image.asset("assets/logo_app.png", width: 100, height: 100),
          const Text(
            "Bienvenido a ABC App",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Estas listo para empezar este hermoso viaje de aprender mientras juegas?",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          _buttonWidget(context)
        ],
      ));
}

_buttonWidget(BuildContext context) {
  return MaterialButton(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    disabledColor: Colors.grey,
    color: Colors.indigoAccent,
    minWidth: 400,
    height: 50,
    onPressed: () {
      Navigator.pushReplacementNamed(context, 'initial');
    },
    child: const Text('Comencemos',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        )),
  );
}