import 'package:calculadora_imc/model/imc.dart';

class Pessoa {
  String nome;
  double peso;
  double altura;
  IMC imc;
  Pessoa(this.nome, this.peso, this.altura) : imc = IMC(peso, altura);

  double calcularImc() {
    return double.parse(imc.indice);
  }

  String classificarImc() {
    return imc.classificar();
  }

  String mostrarDiagnostico() {
    return '$nome tem um IMC de ${imc.indice} que é classificado como ${imc.classificar()}';
  }
}
