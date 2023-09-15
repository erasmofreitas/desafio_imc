import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }

  static double? lerDouble() {
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static double? lerDoubleComTextoComSaida(String texto, String valorSaida) {
    do {
      try {
        var value = lerStringComTexto(texto).toUpperCase();

        if (value == valorSaida.toUpperCase()) {
          return -1;
        }
        return double.parse(value);
      } catch (e) {
        print("Valor inválido!");
      }
    } while (true);
  }
}
