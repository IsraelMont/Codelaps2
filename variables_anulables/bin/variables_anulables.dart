// Ejemplo de Codigo

//Declara las variables 'name' y 'address'
String? name = 'Jane'; // Declara una variable llamada 'name' que puede contener un String o null.
String? address;  // Declara una variable llamada 'address' que puede contener un String o null.

// Prueba tu solucion (Sin editar):
void main() {
  try {
    if (name == 'Jane' && address == null) {
      // Verifica si 'name' es igual a 'Jane' y 'address' es null.
      // Si ambas condiciones se cumplen, ejecuta el bloque de código dentro del if.
      name = null; // Asigna null a la variable 'name'.
      print('Exito!'); // Imprime "¡Éxito!" cuando la prueba pasa correctamente.
    } else {  // Si la condición dentro del if no se cumple, ejecuta este bloque de código.
      print('No del todo correcto, intentelo de nuevo!'); // Imprime "No del todo correcto, ¡inténtalo de nuevo!" cuando la prueba no pasa correctamente.
    }
  } catch (e) { // Captura cualquier excepción que ocurra durante la ejecución del código dentro del try.
    print('Exception: ${e.runtimeType}');  // Imprime el tipo de la excepción si se produce alguna.

  }
}