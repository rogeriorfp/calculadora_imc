import 'package:calculadora_imc/model/pessoa.dart';
import 'package:calculadora_imc/utils/console_utils.dart';

executar() {
  prompt('CALCULADORA IMC');
  var nome = prompt('Digite o nome do paciente', readString);
  var peso = prompt('Digite o peso do paciente', readDouble);
  var altura = prompt('Digite a altura do paciente', readDouble);
  var paciente = Pessoa(nome, peso, altura);
  print(paciente.mostrarDiagnostico());
}
