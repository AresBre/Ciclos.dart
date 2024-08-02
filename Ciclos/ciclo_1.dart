import 'dart:io';

void main() {
  print('Los primeros 10 números naturales son: ');
  mostrarNaturales(10);
}

void mostrarNaturales(int n) {
  for (int i = 1; i <= n; i++) {
    stdout.write('$i ');
  }
  print();
}
