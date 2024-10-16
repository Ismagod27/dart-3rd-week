// Definir la clase abstracta Animal
abstract class Animal {
  String nombre;
  int edad;

  // Constructor de la clase Animal
  Animal(this.nombre, this.edad);

  // Método abstracto que debe ser implementado por las subclases
  void comer();
}

// Subclase Perro que hereda de Animal
class Perro extends Animal {
  String raza;

  // Constructor de Perro con aserción para verificar que la edad sea mayor que 0
  Perro({required String nombre, required int edad, required this.raza})
      : assert(edad > 0, 'La edad debe ser mayor que 0'),
        super(nombre, edad);

  // Implementación del método comer
  @override
  void comer() {
    print('$nombre está comiendo.');
  }

  // Método para mostrar detalles del perro
  void mostrarDetalles() {
    print('Nombre: $nombre');
    print('Edad: $edad años');
    print('Raza: $raza');
  }
}

void main() {
  try {
    // Crear una instancia de Perro
    Perro perro1 = Perro(nombre: 'Pepito', edad: 3, raza: 'Labrador');

    // Mostrar detalles y hacer que el perro coma
    perro1.mostrarDetalles();
    perro1.comer();

    // Intentar crear un perro con edad no válida (desencadena la aserción)
    Perro(nombre: 'Bobby', edad: -1, raza: 'Pastor Alemán');
  } catch (e) {
    print('Error: $e');
  }
}
