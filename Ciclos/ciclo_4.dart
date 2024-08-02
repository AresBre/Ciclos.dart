import 'dart:io';

void main() {
  List<int> numeros = [];

  print('Por favor, ingrese 10 números:');
  for (int i = 1; i <= 10; i++) {
    stdout.write('Número $i: ');
    int? numero = _leerNumero();
    if (numero != null) {
      numeros.add(numero);
    }
  }

  int suma = numeros.reduce((a, b) => a + b);
  double promedio = suma / numeros.length;

  print('La suma de los números es: $suma');
  print('El promedio de los números es: $promedio');
}

int? _leerNumero() {
  String? input = stdin.readLineSync();
  
  if (input == null || input.isEmpty) {
    print('Entrada no válida.');
    return null;
  }
  
  int? numero = int.tryParse(input);
  
  if (numero == null) {
    print('Por favor, ingrese un número entero.');
    return null;
  }
  
  return numero;
}