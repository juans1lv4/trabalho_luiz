// Questão 3//

import 'dart:io';

void main() {
  solicitarMes();
}

void solicitarMes() {
  print('Digite um número de 1 a 12 para saber o mês correspondente:');
  String? input = stdin.readLineSync();
  
  if (input == null || int.tryParse(input) == null) {
    print('Entrada inválida! Por favor, tente novamente.');
    solicitarMes();
    return;
  }
  
  int numero = int.parse(input);

  String obterMes(int numero) {
    switch (numero) {
      case 1: return 'Janeiro';
      case 2: return 'Fevereiro';
      case 3: return 'Março';
      case 4: return 'Abril';
      case 5: return 'Maio';
      case 6: return 'Junho';
      case 7: return 'Julho';
      case 8: return 'Agosto';
      case 9: return 'Setembro';
      case 10: return 'Outubro';
      case 11: return 'Novembro';
      case 12: return 'Dezembro';
      default:
        print('Número inválido! Tente novamente.');
        solicitarMes();
        return '';
    }
  }
  
  String mes = obterMes(numero);
  if (mes.isNotEmpty) {
    print('O mês correspondente é: $mes');
  }
}
