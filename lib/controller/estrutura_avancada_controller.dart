import 'dart:io';

import 'package:estrutura_avancada/classes/classes.dart';

class ArvoreBinariaController {
  ArvoreBinariaBusca tree = ArvoreBinariaBusca();
  var choice = 0;

  void gerarAutomatica() {
    tree.insert(45);
    tree.insert(10);
    tree.insert(7);
    tree.insert(12);
    tree.insert(90);
    tree.insert(50);
    tree.insert(11);
    print('Arvore gerada com sucesso!');
  }

  void gerarManual() {
    var op;
    do {
      print('Informe o número que deseja inserir');

      var num;
      try {
        num = int.parse(stdin.readLineSync()!);
      } catch (e) {
        print('Valor informado é inválido');
      }

      tree.insert(num);

      print('Elemento $num inserido com sucesso na Árvore!\n');
      print('Deseja inserir mais elementos ? (Sim / Não)');

      op = stdin.readLineSync()!.toLowerCase();
    } while (op == 'sim' || op == 's');
  }

  void gerar() {
    var op;
    do {
      print('\n         ::::   Arvóre Genérica   ::::\n');
      print('::         Escolha uma opção de 0 a 2         ::\n');
      print('::     1  - Gerar Árvore Manual               ::');
      print('::     2  - Gerar Árvore Automatica           ::');
      print('::     3  - Adicionar elemento na Árvore      ::');
      print('::     0  - Sair sem gerar Árvore             ::\n');

      try {
        op = int.parse(stdin.readLineSync()!);
      } catch (e) {
        print('Inserio um valor invalido!');
      }

      switch (op) {
        case 1:
          gerarManual();
          break;
        case 2:
          gerarAutomatica();
          break;
        case 3:
          gerarManual();
          break;
        case 0:
          print('Saindo ...');
          break;
      }
    } while (op != 0);
  }

  void getInOrder() {
    print('In - Order: ');
    tree.inorder();
  }

  void getPreOrder() {
    print('Pré - Order: ');
    tree.preOrder();
  }

  void getPosOrder() {
    print('Pós - Order: ');
    tree.posOrder();
  }

  void getGrau() {
    dynamic num;
    try {
      num = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print('Valor informado é inválido');
    }
    print('O grau do elemento $num é: ${tree.grau(num)}');
  }

  void getAltura() {
    dynamic num;
    try {
      num = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print('Valor informado é inválido');
    }
    print('A altura do elemento $num é: ${tree.altura(num)}');
  }

  void getProfundidade() {
    dynamic num;
    try {
      num = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print('Valor informado é inválido');
    }
    print('A profundidade do elemento $num é :');
    tree.profundidade(num);
  }

  void getNivel() {
    dynamic num;
    try {
      num = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print('Valor informado é inválido');
    }
    print('O nivel do elemento $num é : ');
    tree.nivel(num);
  }

  void getRemover() {
    dynamic num;
    try {
      num = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print('Valor informado é inválido');
    }
    tree.deleteElemento(num);
    print('Elemento $num foi removido com sucesso! ');
  }

  void getVerificar() {
    dynamic num;
    try {
      num = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print('Valor informado é inválido');
    }
    var check = tree.search(num);
    if (check) {
      print('Elemento $num existe na Árvore ');
    } else {
      print('Elemento $num não existe na Árvore  ');
    }
  }

  void getCount() {}
}
