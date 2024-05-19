// --Ejemplo de codigo

// Define una función llamada 'stringify' que toma dos enteros 'x' e 'y' como parámetros.
// Devuelve una cadena que contiene 'x' y 'y' separados por un espacio.
String stringify(int x, int y) {
  return '$x $y'; // Retorna la concatenación de 'x' y 'y' con un espacio entre ellos.
}


// Tests your solution (Don't edit!): 
// Función principal donde se realizan las pruebas.
void main() {
  // Assert: Comprueba si el resultado de 'stringify(2, 3)' es igual a '2 3'.
  // Si no es así, imprime un mensaje de error.
  assert(stringify(2, 3) == '2 3',
      "Your stringify method returned '${stringify(2, 3)}' instead of '2 3'");
  // Imprime "¡Éxito!" para indicar que la prueba ha pasado correctamente.
  print('Exito!');
}