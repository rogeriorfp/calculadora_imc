import 'dart:math';

class IMC {
  final double _peso;
  final double _altura;
  IMC(double peso, double altura)
      : _peso = peso,
        _altura = altura;

  get indice => (_peso / pow(_altura, 2)).toStringAsFixed(1);

  String classificar() {
    double imc = double.parse(indice);
    if (imc < 16) return "Magreza grave";
    if (imc < 17) return "Magreza moderada";
    if (imc < 18.5) return "Magreza moderada";
    if (imc < 25) return "Saudável";
    if (imc < 30) return "Sobrepeso";
    if (imc < 35) return "Obesidade grau 1";
    if (imc < 40) return "Obesidade grau 2";

    return "Obesidade grau 3";
  }
}
