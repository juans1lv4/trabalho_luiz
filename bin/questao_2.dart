import 'dart:io';

void main() {

  var Permitido = ['pdf', 'jpg', 'png', 'docx'];

  String solicitarArquivo(List<String> validos) {
    print("Digite o tipo de arquivo que deseja enviar (ex: pdf, jpg, png ou docx):");
    String? entrada = stdin.readLineSync()?.toLowerCase(); 

    if (entrada != null && validos.contains(entrada)) {
      print("O tipo de arquivo '$entrada' é válido. Upload permitido!");
      return entrada;
    } else {
      print("Erro: O tipo de arquivo '$entrada' não é permitido. Tente novamente.");
      return solicitarArquivo(validos); 
    }
  }

  String tipoArquivo = solicitarArquivo(Permitido);
  print("Tipo de arquivo selecionado: $tipoArquivo");
}