import 'package:ABC/utils/constants.dart';

class Functions {
  static validateEmail(String value) {
    RegExp regExp = RegExp(Constants.patternEmail);

    return regExp.hasMatch(value) ? null : 'Email inválido';
  }

  static validateName(String value) {
    RegExp regExp = RegExp(Constants.patternName);
    return value.length >= 4 && regExp.hasMatch(value)
        ? null
        : 'Ingresa un nombre valido';
  }

  static validatePassword(String value) {
    return value.length >= 6
        ? null
        : 'La contraseña debe tener al menos 6 caracteres';
  }
}
