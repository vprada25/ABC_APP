import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InitialPlay extends StatelessWidget {
  const InitialPlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthBackground(
            child: Center(
                child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _containerNamePlayer(context),
      ],
    ))));
  }
}

_containerNamePlayer(BuildContext context) {
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
            "Estas Listo Para Jugar y Aprender?",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Ingrese su nombre",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
          ),
          const SizedBox(height: 20),
          _buttonWidget(context)
        ],
      ));
}

_buttonWidget(BuildContext context) {
  return MaterialButton(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    elevation: 0,
    minWidth: 400,
    height: 50,
    disabledColor: Colors.grey,
    color: Colors.indigoAccent,
    onPressed: () {
      Navigator.pushReplacementNamed(context, 'quiz');
    },
    child: const Text('Comenzar a jugar',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        )),
  );
}
