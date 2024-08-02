import 'dart:io';

void main() {
  int numero = 5;
  
  patron(numero);
}

void patron(int numero) {
  for (int n = 1; n <= numero; n++) {
    print('*' * n);
  }

  for (int n = numero - 1; n >= 1; n--) {
    print('*' * n);
  }
}
