// QUESTÃO 01

import 'dart:io';

void main() {
  List<String> categoria = <String>[
    'eletronicos',
    'alimentos',
    'vestuario',
    'livros',
  ];
  print('Escolha uma das categorias $categoria');
  String? categorias = stdin.readLineSync()?.toLowerCase().trim();
  if (categorias == null || !categoria.contains(categorias)) {
    print('Categoria inválida!');
    return;
  }
  print('------------------');
  print('Busca realizada com sucesso');
}
