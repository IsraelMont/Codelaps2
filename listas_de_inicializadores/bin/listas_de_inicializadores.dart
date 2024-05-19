// -- Ejemplo de Codigo

//  crea una clase FirstTwoLetters
class FirstTwoLetters {
  final String letterOne; // Declara una variable final 'letterOne' de tipo String.
  final String letterTwo; // Declara una variable final 'letterTwo' de tipo String.


  // Crea un constructor para la clase 'FirstTwoLetters' con una lista de inicializadores:
  FirstTwoLetters(String word)
    : assert(word.length >= 2), // Asegura que la longitud de 'word' sea al menos 2 caracteres.
    letterOne = word[0],  // Inicializa 'letterOne' con el primer carácter de 'word'.
    letterTwo = word[1];  // Inicializa 'letterTwo' con el segundo carácter de 'word'.
}


// Prueba tu solución (¡No edites!):
void main() {
  final errs = <String>[];  // Inicializa una lista vacía de mensajes de error.

  // Inicia un bloque try para manejar excepciones.
  try {
    // Crea una instancia de 'FirstTwoLetters' con la palabra 'My String'.
    final result = FirstTwoLetters('My String');
    
    // Verifica si la primera letra de la palabra es 'M'.
    if (result.letterOne != 'M') {
      // Agrega un mensaje de error si la primera letra no es 'M'.
      errs.add('Called FirstTwoLetters(\'My String\') and got an object with \n letterOne equal to \'${result.letterOne}\' instead of the expected value (\'M\').');
    }

    // Verifica si la segunda letra de la palabra es 'y'.
    if (result.letterTwo != 'y') {
      // Agrega un mensaje de error si la segunda letra no es 'y'.
      errs.add('Called FirstTwoLetters(\'My String\') and got an object with \n letterTwo equal to \'${result.letterTwo}\' instead of the expected value (\'y\').');
    }
  } catch (e) {
    // Captura cualquier excepción que pueda ocurrir durante la creación de la instancia y la maneja.
    errs.add('Called FirstTwoLetters(\'My String\') and got an exception \n of type ${e.runtimeType}.');
  }

  // Declara una variable booleana para controlar si se captura una excepción.
  bool caughtException = false;
  
  // Inicia un bloque try para manejar excepciones.
  try {
    // Intenta crear una instancia de FirstTwoLetters con una cadena vacía.
    FirstTwoLetters('');
  } catch (e) {
    // Si se captura una excepción, cambia el valor de la variable a true.
    caughtException = true;
  }
  
  // Verifica si se capturó una excepción al intentar crear una instancia con una cadena vacía.
  if (!caughtException) {
    // Agrega un mensaje de error si no se capturó la excepción esperada al intentar crear una instancia con una cadena vacía.
    errs.add('Called FirstTwoLetters(\'\') and didn\'t get an exception \n from the failed assertion.');
  }
  
  // Verifica si hay errores en la lista de errores.
  if (errs.isEmpty) {
    // Si no hay errores, imprime 'Exito!' para indicar que la prueba fue exitosa.
    print('Exito!');
  } else {
    // Si hay errores, imprime cada error.
    errs.forEach(print);
  }
}