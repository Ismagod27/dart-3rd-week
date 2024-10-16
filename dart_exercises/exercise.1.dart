// Definir la clase Persona
class Persona {
  // Atributos de la clase
  String nombre;
  int edad;

  // Constructor para inicializar los atributos
  Persona(this.nombre, this.edad);

  // Método para mostrar los detalles de la persona
  void mostrarDetalles() {
    print('Nombre: $nombre');
    print('Edad: $edad años');
  }
}

void main() {
  // Crear una instancia de la clase Persona
  Persona persona1 = Persona('Ismanol', 22);

  // Imprimir los valores de la instancia
  persona1.mostrarDetalles();
}
