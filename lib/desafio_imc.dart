import 'package:desafio_imc/models/console_utils.dart';
import 'package:desafio_imc/models/pessoa.dart';

void execute() {
  print("Bem vindo ao sistema de cálculo de IMC!");
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome da pessoa:");
  var pessoa = Pessoa(nome);
  double? peso;
  double? altura;
  double? imc;

  peso = ConsoleUtils.lerDoubleComTextoComSaida(
      "Informe seu peso (kg) ou S para sair.", "S");
  if (peso != null && peso != -1) {
    pessoa.setPeso(peso);
  }

  altura = ConsoleUtils.lerDoubleComTextoComSaida(
      "Informe sua altura (cm) ou S para sair.", "S");
  if (altura != null && altura != -1) {
    pessoa.setAltura(altura);
  }

  imc = (pessoa.getPeso() /
          ((pessoa.getAltura() / 100) * (pessoa.getAltura() / 100)))
      .truncateToDouble();

  if (imc < 16) {
    print("${pessoa.getNome()}, seu IMC: $imc, você está com magreza grave!");
  } else if (imc == 16 || imc < 17) {
    print(
        "${pessoa.getNome()}, seu IMC: $imc, você está com magreza moderada!");
  } else if (imc == 17 || imc < 18.5) {
    print("${pessoa.getNome()}, seu IMC: $imc, você está com magreza leve!");
  } else if (imc == 18.5 || imc < 25) {
    print("${pessoa.getNome()}, seu IMC: $imc, você está saudável!");
  } else if (imc == 25 || imc < 30) {
    print("${pessoa.getNome()}, seu IMC: $imc, você está com sobrepeso!");
  } else if (imc == 30 || imc < 35) {
    print(
        "${pessoa.getNome()}, seu IMC: $imc, você está com obesidade grau I!");
  } else if (imc == 35 || imc < 40) {
    print(
        "${pessoa.getNome()}, seu IMC: $imc, você está com obesidade grau II (severa)!");
  } else if (imc >= 40) {
    print(
        "${pessoa.getNome()}, seu IMC: $imc, você está com obesidade grau III (mórbida)!");
  } else {
    print("${pessoa.getNome()}, procure ajuda médica!");
  }

  print("Nome: ${pessoa.getNome()}");
  print("Peso: ${pessoa.getPeso()}");
  print("Altura: ${pessoa.getAltura()}");
}
