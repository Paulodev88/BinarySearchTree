import 'classes.dart';

class ArvoreBinariaBusca {
  No? raiz;

  ArvoreBinariaBusca({
    this.raiz,
  });

  set end(int end) {}

  void deleteElemento(int elemento) {
    raiz = deleteRecursivo(raiz!, elemento);
  }

  No? deleteRecursivo(No? no, int elemento) {
    if (no == null) {
      return no;
    }
    if (elemento < no.element) {
      no.left = deleteRecursivo(no.left, elemento);
    } else if (elemento > no.element) {
      no.right = deleteRecursivo(no.right, elemento);
    } else {
      if (no.left == null) {
        return no.right;
      } else if (no.right == null) {
        return no.left;
      }
      no.element = minValue(no.right);

      no.right = deleteRecursivo(no.right, no.element);
    }

    return no;
  }

  int minValue(No? no) {
    var minval = no!.element;

    while (no!.left != null) {
      minval = no.left!.element;
      no = no.left;
    }
    return minval;
  }

  void insert(int elemento) {
    raiz = insertRecursive(raiz, elemento);
  }

  No insertRecursive(No? no, int elemento) {
    if (no == null) {
      no = No(element: elemento);
      return no;
    }

    if (elemento < no.element) {
      no.left = insertRecursive(no.left, elemento);
    } else if (elemento > no.element) {
      no.right = insertRecursive(no.right, elemento);
    }
    return no;
  }

  void inorder() {
    inorderRecursive(raiz);
  }

  //Ordenação LNR
  void inorderRecursive(No? no) {
    if (no != null) {
      inorderRecursive(no.left);
      print(' ${no.element} ');
      inorderRecursive(no.right);
    }
  }

  void posOrder() {
    posOrderRecursive(raiz);
  }

  //Ordenação LRN
  void posOrderRecursive(No? no) {
    if (no != null) {
      posOrderRecursive(no.left);
      posOrderRecursive(no.right);
      print(' ${no.element} ');
    }
  }

  void preOrder() {
    preOrderRecursive(raiz);
  }

  //Ordenação  NLR
  void preOrderRecursive(No? no) {
    if (no != null) {
      print(' ${no.element} ');
      preOrderRecursive(no.left);
      preOrderRecursive(no.right);
    }
  }

  bool search(int elemento) {
    var search = true;
    dynamic no = searchRecursive(raiz, elemento);
    if (no != null) {
      return search;
    } else {
      search = false;
      return search;
    }
  }

  dynamic searchRecursive(dynamic no, int elemento) {
    if (no == null || no.element == elemento) {
      return no;
    }

    if (no.element > elemento) {
      return searchRecursive(no.left, elemento);
    }

    return searchRecursive(no.right, elemento);
  }

  int grau(int elemento) {
    var grau = 0;
    dynamic no = searchRecursive(raiz, elemento);
    if (no != null) {
      No grauNo = no;
      if (grauNo.left != null) {
        grau++;
      }
      if (grauNo.right != null) {
        grau++;
      }
      return grau;
    } else {
      grau = -1;
      return grau;
    }
  }

  void profundidade(int elemento) {
    var profundidade = 0;
    profundidadeRecursive(raiz, elemento, profundidade);
  }

  void profundidadeRecursive(dynamic no, int elemento, int profundidade) {
    if (no == null || no.element == elemento) {
      if (no != null) {
        print(profundidade);
      }
    }

    if (no != null) {
      if (no.element > elemento) {
        profundidade++;
        profundidadeRecursive(no.left, elemento, profundidade);
      }
      profundidade++;
      profundidadeRecursive(no.right, elemento, profundidade);
    }
  }

  void nivel(int elemento) {
    var nivel = 0;
    nivelRecursive(raiz, elemento, nivel);
  }

  void nivelRecursive(dynamic no, int elemento, int nivel) {
    if (no == null || no.element == elemento) {
      if (no != null) {
        print(nivel);
      }
    }

    if (no != null) {
      if (no.element > elemento) {
        nivel++;
        nivelRecursive(no.left, elemento, nivel);
      }
      nivel++;
      nivelRecursive(no.right, elemento, nivel);
    }
  }

  //Falta implementar
  void altura(int elemento) {}

  //Falta implementar
  void getAltura(dynamic no) {}

  //Falta implementar
  void count() {
    countRecursive(raiz!);
  }

  //Falta implementar
  void countRecursive(No? no) {}
}
