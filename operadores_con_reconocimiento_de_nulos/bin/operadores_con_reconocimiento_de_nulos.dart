// --Ejemplo de Codigo

String? foo = 'a string';   // Define una variable 'foo' que puede contener una cadena o ser nula.
String? bar; // = null      // Define una variable 'bar' que puede contener una cadena o ser nula.

// Sustituye un operador que hace que se asigne 'una cadena' a baz.
//String? baz = foo /* (TODO) */ bar ;

// Utiliza el operador de fusión de nulos (??) para asignar 'foo' si no es nulo, 
// de lo contrario, asigna 'bar'.
String? baz = foo ?? bar; 

// Define una función que actualiza la variable 'bar' solo si es nula.
void updateSomeVars(){
  // Utiliza el operador de asignación compuesta (??=) para asignar 'a string' a 'bar' 
  // solo si 'bar' es nulo.
  bar ??= 'a string';
}
// Prueba tu solución (¡No la edites!):
void main() {
  try {
     // Actualiza las variables según la lógica definida en 'updateSomeVars'.
    updateSomeVars();
    
    // Comprueba si 'foo' tiene el valor esperado.
    if (foo != 'a string') {
      print('Parece que foo de alguna manera terminó con el valor incorrecto.');
    } 
    // Comprueba si 'bar' tiene el valor esperado.
    else if (bar != 'a string') {
      print('Parece que la bar terminó con un valor incorrecto.');
    } 
    // Comprueba si 'baz' tiene el valor esperado.
    else if (baz != 'a string') {
      print('Parece que baz terminó con el valor incorrecto.');
    } 
    // Si todas las variables tienen los valores esperados, imprime 'Exito!'.
    else {
      print('Exito!');
    }
  } 
  // Si se produce una excepción durante la ejecución, imprime el tipo de excepción.
  catch (e) {
    print('Exception: ${e.runtimeType}.');
  }
  
}