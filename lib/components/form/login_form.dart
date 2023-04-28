import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/login_form_provider.dart';
import '../../ui/input_decorations.dart';
import '../../services/services.dart';
import '../../utils/functions.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);
    const sizeBoxing = SizedBox(height: 20);
    return Form(
        key: loginForm.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(children: [
          TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.name,
              decoration: InputDecorations.authInputDecoration(
                  hintText: 'tu nombre',
                  labelText: 'Ingresa tu nombre',
                  prefixIcon: Icons.supervised_user_circle),
              onChanged: (value) => loginForm.name = value,
              validator: (value) => Functions.validateName(value!)),
          sizeBoxing,
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 0,
            minWidth: 400,
            height: 50,
            disabledColor: Colors.grey,
            color: Colors.indigoAccent,
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: const Text('Comenzar a jugar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ))),
            onPressed: () async {
              FocusScope.of(context).unfocus();

              final authService =
                  Provider.of<AuthService>(context, listen: false);

              if (!loginForm.isValidForm()) return;

              loginForm.isLoading = true;

              final String? errorMessage =
                  await authService.playGame(loginForm.name);

              if (errorMessage == null) {
                Navigator.pushReplacementNamed(context, 'quiz');
              } else {
                loginForm.isLoading = false;
              }
            },
          ),
        ]));
  }
}
