import 'dart:io';

// Definir la enumeración DiaSemana
enum DiaSemana { lunes, martes, miercoles, jueves, viernes, sabado, domingo }

// Extensión sobre int para verificar si un número es par
extension VerificarParidad on int {
  bool esPar() {
    return this % 2 == 0;
  }
}

void main() {
  // Mostrar un ejemplo de uso de la enumeración
  DiaSemana dia = DiaSemana.miercoles;
  print('Hoy es: $dia'); // Mostrará: Hoy es: DiaSemana.miercoles

  // Pedir al usuario que ingrese un número
  print('Ingresa un número:');
  int? numero =
      int.tryParse(stdin.readLineSync()!); // Convertir la entrada a número

  // Verificar si el número es par
  if (numero != null) {
    if (numero.esPar()) {
      print('$numero es un número par');
    } else {
      print('$numero es un número impar');
    }
  } else {
    print('Por favor, ingresa un número válido.');
  }
}
