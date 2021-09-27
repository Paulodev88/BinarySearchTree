import 'dart:io';
import 'package:estrutura_avancada/controller/controller.dart';

void main(List<String> arguments) {
  var controller = ArvoreBinariaController();

  var choice = -1;

  do {
    print('\n         ::::   Arvóre Genérica   ::::\n');
    print('::         Escolha uma opção de 0 a 9        ::\n');
    print('::     1  - Gerar Árvore                      ::');
    print('::     2  - Imprimir Árvore Pós-Ordem LRN     ::');
    print('::     3  - Imprimir Árvore Pré-Ordem NLR     ::');
    print('::     4  - Imprimir Árvore In-Ordem  LNR     ::');
    print('::     5  - Imprimir o Grau                   ::');
    print('::     6  - Imprimir a Altura                 ::');
    print('::     7  - Imprimir a Profundidade           ::');
    print('::     8  - Imprimir os Níveis                ::');
    print('::     9  - Remover um Elemento               ::');
    print('::     10 - Verificar Elemento                ::');
    print('::     11 - Verificar a quantidade Elemento   ::');
    print('::     0  - Finalizar Programa                ::\n');

    try {
      choice = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print('A Escolha é um valor inválido!');
    }

    switch (choice) {
      case 1:
        controller.gerar();
        break;
      case 2:
        controller.getPosOrder();
        break;
      case 3:
        controller.getPreOrder();
        break;
      case 4:
        controller.getInOrder();
        break;
      case 5:
        controller.getGrau();
        break;
      case 6:
        controller.getAltura();
        break;
      case 7:
        controller.getProfundidade();
        break;
      case 8:
        controller.getNivel();
        break;
      case 9:
        controller.getRemover();
        break;
      case 10:
        controller.getVerificar();
        break;
      case 11:
        controller.getCount();
        break;
    }
  } while (choice != 0);
}
