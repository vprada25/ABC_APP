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
          _infoWidget(),
          const SizedBox(height: 40),
          _buttonWidget(),
        ],
      ),
    )));
  }
}

_infoWidget() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        "Bienvenido a ABC App",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      ),
      const SizedBox(height: 20),
      Container(
        alignment: Alignment.center,
        width: 300,
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(24),
        ),
        child: const Text(
          "Para iniciar el aprendizaje, debe escoger entre el juego de las palabras o el juego de las imágenes.",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      )
    ],
  );
}

_buttonWidget() {
  return Row(
    mainAxisAlignment:
        MainAxisAlignment.center, // Centra los botones horizontalmente
    children: [
      MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        disabledColor: Colors.grey,
        elevation: 0,
        color: Colors.lightBlue,
        onPressed: () {},
        child: const Text('Juego de palabras',
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      SizedBox(
        width: 20, // Ancho de separación entre botones
      ),
      MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        disabledColor: Colors.grey,
        elevation: 0,
        color: Colors.lightBlue,
        onPressed: () {},
        child: const Text('Juego de imágenes',
            style: TextStyle(
              color: Colors.white,
            )),
      ),
    ],
  );
}
