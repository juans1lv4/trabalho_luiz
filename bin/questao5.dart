import 'dart:io';

void main() {
  var permitidos = ['cartao', 'boleto', 'paypal', 'pix'];

  
  String formaPagamento(List<String> metodosValidos) {
    print(" Bem-vindo a nossa plataforma de e-commerce! ");
    print("Escolha sua forma de pagamento :");
    print("Cartão");
    print("Boleto");
    print("PayPal");
    print("Pix");

    
    print("Digite sua forma de pagamento :");
    String? entrada = stdin.readLineSync()?.toLowerCase(); 

    
    if (entrada != null && metodosValidos.contains(entrada)) {
      print("Você escolheu a forma de pagamento '$entrada'. Estamos verificando sua compra... ");
      return entrada; 
    } else {
      print("Sua forma de pagamento '$entrada' não é permitida. Tente novamente.");
      return formaPagamento(metodosValidos); 
    }
  }

 
  String metodoEscolhido = formaPagamento(permitidos);
  print("Compra finalizada! Forma de pagamento selecionada: $metodoEscolhido ");
}