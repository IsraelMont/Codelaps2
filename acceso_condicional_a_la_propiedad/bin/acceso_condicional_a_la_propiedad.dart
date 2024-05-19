// --Ejemplo de Codigo

// Define una función que toma una cadena opcional y devuelve una versión en mayúsculas de esa cadena si no es nula.
String? upperCaseIt(String? str) {
  // Usa el operador de acceso condicional (?) para intentar acceder al método `toUpperCase` de la cadena.
  // Si la cadena es nula, devuelve nulo. Si la cadena no es nula, se aplica `toUpperCase` y se devuelve la versión en mayúsculas de la cadena.
  return str?.toUpperCase();
}

// Prueba tu solución (¡No la edites!):
void main() {
  // Primer intento: llamando a upperCaseIt con una cadena nula.
  try {
    String? one = upperCaseIt(null);
    // Comprueba si el resultado no es nulo cuando se pasa una cadena nula.
    if (one != null) {
      print('Parece que no devuelves valores nulos para entradas nulas.');
    } else {
      print('¡Éxito cuando str es nulo!');
    }
  } catch (e) {
    // Maneja cualquier excepción que pueda ocurrir durante la llamada a upperCaseIt con una cadena nula.
    print('Intenté llamar a UpperCaseIt(null) y obtuve una excepción: \n ${e.runtimeType}.');
  }
  
  // Segundo intento: llamando a upperCaseIt con una cadena no nula.
  try {
    String? two = upperCaseIt('a string');
    // Comprueba si el resultado es nulo incluso cuando se pasa una cadena con valor.
    if (two == null) {
      print('Parece que estás devolviendo nulo incluso cuando str tiene un valor.');
    } 
    // Comprueba si el resultado no es 'A STRING' cuando se pasa una cadena con valor.
    else if (two != 'A STRING') {
      print('Intente upperCaseIt(\'a string\'), but didn\'t get \'A STRING\' como respuesta.');
    } else {
      print('Éxito cuando str no es nulo!');
    }
  } catch (e) {
    // Maneja cualquier excepción que pueda ocurrir durante la llamada a upperCaseIt con una cadena no nula.
    print('Intenté llamar a UpperCaseIt(\'a string\') y obtuve una excepción: \n ${e.runtimeType}.');
  }
}