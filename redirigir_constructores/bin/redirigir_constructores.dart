// Ejemplo de Codigo


//Define una clase Color
class Color {
  int red;  // Define una propiedad para el componente de color rojo.
  int green;  // Define una propiedad para el componente de color verde
  int blue; // Define una propiedad para el componente de color azul.
  
  // Constructor principal de la clase Color que inicializa las propiedades de color.
  Color(this.red, this.green, this.blue);

  // Define un constructor con nombre "black" que inicializa todas las propiedades de color en cero, 
  // representando el color negro.
  Color.black(): this(0, 0, 0);
}


// Funcion principal (Don't edit!):
void main() {
  final errs = <String>[]; // Lista para almacenar mensajes de error durante las pruebas.

  try {
    final result = Color.black(); // Crea una instancia de Color utilizando el constructor "black".
    
    // Comprueba si el componente de color rojo es cero.
    if (result.red != 0) {
      errs.add('Called Color.black() and got a Color with red equal to \n ${result.red} instead of the expected value (0).');
    }

    // Comprueba si el componente de color verde es cero.
    if (result.green != 0) {
      errs.add('Called Color.black() and got a Color with green equal to \n ${result.green} instead of the expected value (0).');
    }

    // Comprueba si el componente de color azul es cero.
    if (result.blue != 0) {
  errs.add('Called Color.black() and got a Color with blue equal to \n ${result.blue} instead of the expected value (0).');
    }
  } catch (e) {
    // Maneja cualquier excepción que pueda ocurrir durante las pruebas.
    print('Called Color.black() and got an exception of type ${e.runtimeType}.');
    return;
  }

  // Verifica el resultado de las pruebas.
  if (errs.isEmpty) {
    // Imprime "Exito!" si no hay errores.
    print('Exito!');
  } else {
    // Imprime cada error si hay errores.
    errs.forEach(print);
  }
}