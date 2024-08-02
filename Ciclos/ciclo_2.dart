import 'dart:io';

void main() {
  int resultado = sumaNaturales(20);
  
  print('La suma de los primeros 20 números naturales es: $resultado');
}

int sumaNaturales(int n) {
  int suma = 0;
  int i = 1;
  
  while (i <= n) {
    suma += i;
    i++;
  }
  
  return suma;
}