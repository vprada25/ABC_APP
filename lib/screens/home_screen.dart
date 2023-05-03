import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ABC/widgets/widgets.dart';

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
            Image.asset("assets/logo_app.png", width: 100, height: 100),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              elevation: 0,
              minWidth: 400,
              height: 50,
              color: Colors.indigoAccent,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: const Text(
                  '¿Estas listo?',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              onPressed: () async {
                Navigator.pushReplacementNamed(context, 'welcome');
              },
            ),
            const SizedBox(height: 40),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              elevation: 0,
              minWidth: 400,
              height: 50,
              color: Colors.indigoAccent,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: const Text(
                  'Iniciar Aprendizaje',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const VideoPlayerWidget(
                      videoUrl: 'assets/video/learning.mp4'),
                ));
              },
            ),
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          SystemNavigator.pop();
        },
        child: Icon(Icons.exit_to_app),
        backgroundColor: Colors.indigoAccent,
      ),
    );
  }
}
