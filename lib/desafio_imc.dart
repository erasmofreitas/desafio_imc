import 'package:desafio_imc/models/console_utils.dart';
import 'package:desafio_imc/models/pessoa.dart';

void execute() {
  print("Bem vindo ao sistema de cálculo de IMC!");
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome da pessoa:");
  var pessoa = Pessoa(nome);
  double? peso;
  double? altura;

  peso = ConsoleUtils.lerDoubleComTextoComSaida(
      "Informe seu peso ou S para sair.", "S");
  if (peso != null && peso != -1) {
    pessoa.setPeso(peso);
  }

  altura = ConsoleUtils.lerDoubleComTextoComSaida(
      "Informe sua altura ou S para sair.", "S");
  if (altura != null && altura != -1) {
    pessoa.setAltura(altura);
  }

  print("Nome: ${pessoa.getNome()}");
  print("Peso: ${pessoa.getPeso()}");
  print("Altura: ${pessoa.getAltura()}");
}
