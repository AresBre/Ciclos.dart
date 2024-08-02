import 'dart:io';

void main() {
  stdout.write('Ingrese el número de términos a mostrar: ');
  int? n = _leerNumeroPositivo();
  
  if (n != null) {
    mostrarFibonacci(n);
  } else {
    print('Número no válido.');
  }
}

int? _leerNumeroPositivo() {
  String? input = stdin.readLineSync();
  
  if (input == null || input.isEmpty) {
    print('Entrada no válida.');
    return null;
  }
  
  int? numero = int.tryParse(input);
  
  if (numero == null || numero < 1) {
    print('Por favor, ingrese un número entero positivo.');
    return null;
  }
  
  return numero;
}

void mostrarFibonacci(int n) {
  int num1 = 0;
  int num2 = 1;
  int suma = 0;

  print('Los primeros $n términos de la serie de Fibonacci son:');
  
  for (int i = 1; i <= n; i++) {
    print('$num1 ', terminator: ' ');
    suma += num1;
    int num3 = num1 + num2;
    num1 = num2;
    num2 = num3;
  }

  print();
  print('La suma de los primeros $n términos de la serie de Fibonacci es: $suma');
}