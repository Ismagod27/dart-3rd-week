// Clase base Persona
class Persona {
  String nombre;
  int edad;

  // Constructor de Persona
  Persona(this.nombre, this.edad);

  // Método para mostrar los detalles de la persona
  void mostrarDetalles() {
    print('Nombre: $nombre');
    print('Edad: $edad años');
  }
}

// Clase derivada Empleado que hereda de Persona
class Empleado extends Persona {
  String cargo;

  // Constructor nombrado que incluye nombre, edad y cargo
  Empleado({required String nombre, required int edad, required this.cargo})
      : super(nombre, edad); // Llama al constructor de la clase base

  // Sobrescribir el método mostrarDetalles para incluir el cargo
  @override
  void mostrarDetalles() {
    super.mostrarDetalles(); // Llama al método de la clase base
    print('Cargo: $cargo');
  }
}

void main() {
  // Crear una instancia de Empleado
  Empleado empleado1 =
      Empleado(nombre: 'Ismanol', edad: 22, cargo: 'Desarrollador');

  // Mostrar los detalles del empleado
  empleado1.mostrarDetalles();
}
