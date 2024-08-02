import 'dart:io';

void main() {
  stdout.write('Ingrese un número para mostrar su tabla de multiplicar: ');
  int? numero = _leerNumero();
  
  if (numero != null) {
    tablaMultiplicar(numero);
  } else {
    print('Número no válido.');
  }
}

void tablaMultiplicar(int numero) {
  print('Tabla de multiplicar del $numero:');
  for (int i = 1; i <= 10; i++) {
    print('$numero x $i = ${numero * i}');
  }
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
