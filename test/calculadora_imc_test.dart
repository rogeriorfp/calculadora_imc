import 'package:calculadora_imc/model/imc.dart';
import 'package:test/test.dart';

void main() {
  group('IMC', () {
    test('Calcula o IMC correto', () {
      final imc = IMC(70, 1.75);
      expect(imc.indice, '22.9');
    });

    test('Classifica o IMC corretamente', () {
      final imc = IMC(70, 1.75);
      expect(imc.classificar(), 'Saudável');
    });
  });
}
