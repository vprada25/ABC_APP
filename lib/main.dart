import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:ABC/screens/screens.dart';

import 'services/services.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ABC App',
        initialRoute: 'home',
        routes: {
          /*   'login': (context) => const LoginScreen(),
          'register': (context) => const RegisterScreen(), */
          'home': (context) => Bounce(
              duration: const Duration(seconds: 5), child: const HomeScreen()),
          /* 'check': (context) => const CheckAuthScreen(), */
          'welcome': (context) => FadeInDown(
              duration: const Duration(seconds: 1),
              child: const WelcomeScreen()),
          'initial': (context) => FadeInDown(
              duration: const Duration(seconds: 1), child: const InitialPlay()),
          'quiz': (context) => FadeInDown(
              duration: const Duration(seconds: 1), child: const QuizScreen()),
        },
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.grey[300],
        ));
  }
}
