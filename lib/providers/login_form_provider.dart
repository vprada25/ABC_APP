import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String name = '';

  bool isValidForm() {
    return formKey.currentState!.validate();
  }
}
