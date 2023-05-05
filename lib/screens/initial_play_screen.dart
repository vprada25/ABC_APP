import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/components.dart';
import '../providers/login_form_provider.dart';
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
      width: 330,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Image.asset("assets/images/logo_app.png", width: 100, height: 100),
          const Text(
            "Demuestra que tanto sabes",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          ChangeNotifierProvider(
              create: (_) => LoginFormProvider(), child: LoginForm()),
          const SizedBox(height: 20),
        ],
      ));
}

/* _buttonWidget(BuildContext context) {
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
 */