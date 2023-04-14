import 'package:seminario_app/utils/constants.dart';

class Functions {
  static validateEmail(String value) {
    RegExp regExp = RegExp(Constants.patternEmail);

    return regExp.hasMatch(value) ? null : 'Email inválido';
  }

  static validatePassword(String value) {
    return value.length >= 6
        ? null
        : 'La contraseña debe tener al menos 6 caracteres';
  }
}
