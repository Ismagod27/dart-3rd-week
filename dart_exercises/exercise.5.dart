// Clase abstracta Animal
abstract class Animal {
  String nombre;

  Animal(this.nombre);

  // Método abstracto
  void hacerSonido();
}

// Mixin Nadador
mixin Nadador {
  void nadar() {
    print('Estoy nadando!');
  }
}

// Clase Delfín que hereda de Animal y usa el mixin Nadador
class Delfin extends Animal with Nadador {
  Delfin(String nombre) : super(nombre);

  @override
  void hacerSonido() {
    print('$nombre hace sonido de delfín.');
  }
}

// Clase base Vehiculo
abstract class Vehiculo {
  // Constructor factory que retorna diferentes tipos de vehículos
  factory Vehiculo(String tipo) {
    if (tipo == 'auto') {
      return Auto();
    } else if (tipo == 'moto') {
      return Moto();
    } else {
      throw 'Tipo de vehículo no reconocido';
    }
  }

  // Método que debe ser implementado por los vehículos
  void mover();
}

// Clase Auto que hereda de Vehiculo
class Auto implements Vehiculo {
  @override
  void mover() {
    print('El auto está conduciendo.');
  }
}

// Clase Moto que hereda de Vehiculo
class Moto implements Vehiculo {
  @override
  void mover() {
    print('La moto está acelerando.');
  }
}

void main() {
  // Ejemplo de uso del mixin y la clase abstracta
  Delfin delfin = Delfin('Flipper');
  delfin.hacerSonido(); // Flipper hace sonido de delfín.
  delfin.nadar(); // Estoy nadando!

  // Ejemplo de uso del Factory constructor
  try {
    Vehiculo auto = Vehiculo('auto');
    auto.mover(); // El auto está conduciendo.

    Vehiculo moto = Vehiculo('moto');
    moto.mover(); // La moto está acelerando.

    // Intentar crear un vehículo no reconocido (sin almacenar en una variable)
    Vehiculo('avion'); // Lanzará una excepción
  } catch (e) {
    print('Error: $e'); // Tipo de vehículo no reconocido
  }
}
