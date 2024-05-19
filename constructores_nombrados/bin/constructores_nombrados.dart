// -- Ejemplo de codigo

// Define una clase llamada Color
class Color {
  int red;  // Define un atributo entero llamado "red".
  int green;  // Define un atributo entero llamado "green".
  int blue; // Define un atributo entero llamado "blue".
  
  // Define un constructor de la clase "Color" que toma los valores de "red", "green" y "blue".
  Color(this.red, this.green, this.blue);

  // Crea un constructor con nombre llamado "Color.black"
  Color.black():
        red = 0,  // Inicializa el atributo "red" con el valor 0.
        green = 0,  // Inicializa el atributo "green" con el valor 0.
        blue = 0; // Inicializa el atributo "blue" con el valor 0.
}

// Prueba tu solución (¡No edites!)
void main() {
  final errs = <String>[];  // Inicializa una lista de errores.

  // Inicia un bloque try para manejar excepciones.
  try {
    final result = Color.black(); // Crea una instancia de la clase "Color" utilizando el constructor "Color.black()".
    
    // Verifica si el atributo "red" de la instancia es diferente de 0.
    if (result.red != 0) {
      // Agrega un mensaje de error si el atributo "red" no es 0.
      errs.add('Called Color.black() and got a Color with red equal to \n ${result.red} instead of the expected value (0).');
    }

    // Verifica si el atributo "green" de la instancia es diferente de 0.
    if (result.green != 0) {
      // Agrega un mensaje de error si el atributo "green" no es 0.
      errs.add('Called Color.black() and got a Color with green equal to \n ${result.green} instead of the expected value (0).');
    }

    // Verifica si el atributo "blue" de la instancia es diferente de 0.
    if (result.blue != 0) {
      // Agrega un mensaje de error si el atributo "blue" no es 0.
      errs.add('Called Color.black() and got a Color with blue equal to \n ${result.blue} instead of the expected value (0).');
    }
  } catch (e) {
    // Maneja cualquier excepción que se genere durante la prueba.
    print('Called Color.black() and got an exception of type \n ${e.runtimeType}.');
    return;
  }

  // Verifica si la lista de errores está vacía.
  if (errs.isEmpty) {
    // Imprime "Exito!" si no hay errores.
    print('Exito!');
  } else {
    // Imprime cada error si hay errores.
    errs.forEach(print);
  }
}