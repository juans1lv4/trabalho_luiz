import 'dart:io';

void realizarOperacao() {
  List<String> operacao = <String>[
    'depósito',
    'retirada',
    'tranferência',
    'pagamentos',
  ];
  print("Digite uma operação $operacao:");
  String operacoes = stdin.readLineSync()!.toLowerCase().trim();
  switch (operacoes) {
    case 'depósito':
    case 'retirada':
    case 'transferência':
    case 'pagamento':
      if (operacoes == 'depósito') {
        print('Qual valor deseja depositar?');
      }
      if (operacoes == 'retirada') {
        print('Qual valor deseja retirar?');
      }
      if (operacoes == 'transferência') {
        print('Qual valor deseja transferir?');
      }
      if (operacoes == 'pagamento') {
        print('Qual valor deseja pagar?');
      }

      String? valorInput = stdin.readLineSync();
      if (valorInput == null || valorInput.isEmpty) {
      }
      try {
        double valor = double.parse(valorInput!);
        if (valor > 0) {
          print("Você escolheu realizar um(a): $operacoes");
          print("Valor solicitado: $valor");
          print("Muito bom, $operacoes realizado(a) com sucesso.");
          return;
        } else {
          print("Por favor, insira um valor positivo.");
        }
      } catch (e) {
        print("Digite um número válido.");
      }
      break;
    default:
      print("Digite uma operação válida. Tente novamente.");
  }
}

void main() {
  realizarOperacao();
}
