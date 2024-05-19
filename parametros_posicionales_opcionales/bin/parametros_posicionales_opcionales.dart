// --Ejemplo de Codigo

// Definición de la función joinWithCommas que toma un número obligatorio y hasta cuatro números opcionales.
String joinWithCommas(int a, [int? b, int? c, int? d, int? e]) {
  // Inicializa una variable total con el valor de a convertido a una cadena.
  var total = '$a';
  // Si b no es nulo, agrega b a la cadena total.
  if (b != null) total = '$total, $b';
  // Si c no es nulo, agrega c a la cadena total.
  if (c != null) total = '$total, $c';
  // Si d no es nulo, agrega d a la cadena total.
  if (d != null) total = '$total, $d';
  // Si e no es nulo, agrega e a la cadena total.
  if (e != null) total = '$total, $e';
  // Devuelve la cadena total.
  return total;
}


// Pruebas de la solución (No editar):
void main() {
  // Inicializa una lista de errores.
  final errs = <String>[];
  
  // prueba 1: Llama a joinWithCommas con un argumento.
  try {
    final value = joinWithCommas(1);
    // Verifica si el resultado coincide con la expectativa.
    if (value != '1') {
      errs.add('Tried calling joinWithCommas(1) \n and got $value instead of the expected (\'1\').'); 
      // Si el valor devuelto no es '1', se agrega un mensaje de error a la lista.
    } 
  // Maneja una excepción si la función aún no está implementada.
  } on UnimplementedError {
    print('Tried to call joinWithCommas but failed. \n Did you implement the method?');
    return;
    // Si se produce un UnimplementedError al llamar a la función, se muestra un mensaje indicando que la función no está implementada.

  // Captura cualquier otra excepción que pueda ocurrir.
  } catch (e) {
    print('Tried calling joinWithCommas(1), \n but encountered an exception: ${e.runtimeType}.');
    return;
    // Si se produce cualquier otra excepción, se muestra un mensaje indicando el tipo de excepción.
  }

  // Los siguientes bloques try-catch son similares, solo cambian los argumentos de la función y los mensajes de error.

  // Prueba 2: Llama a joinWithCommas con tres argumentos.
  try {
    final value = joinWithCommas(1, 2, 3);
    // Verifica si el resultado coincide con la expectativa.
    if (value != '1,2,3') {
      errs.add('Tried calling joinWithCommas(1, 2, 3) \n and got $value instead of the expected (\'1,2,3\').'); 
      // Si el valor devuelto no es '1,2,3', se agrega un mensaje de error a la lista.
    } 
  // Maneja una excepción si la función aún no está implementada.
  } on UnimplementedError {
    print('Tried to call joinWithCommas but failed. \n Did you implement the method?');
    return;
    // Si se produce un UnimplementedError al llamar a la función, se muestra un mensaje indicando que la función no está implementada.

  // Captura cualquier otra excepción que pueda ocurrir.
  } catch (e) {
    print('Tried calling joinWithCommas(1, 2 ,3), \n but encountered an exception: ${e.runtimeType}.');
    return;
    // Si se produce cualquier otra excepción, se muestra un mensaje indicando el tipo de excepción.
  }

  // Prueba 3: Llama a joinWithCommas con cinco argumentos.
  try {
    final value = joinWithCommas(1, 2, 3, 4, 5);
    // Verifica si el resultado coincide con la expectativa.
    if (value != '1,2,3,4,5') {
      errs.add('Tried calling joinWithCommas(1, 2, 3, 4, 5) \n and got $value instead of the expected (\'1,2,3,4,5\').'); 
      // Si el valor devuelto no es '1,2,3,4,5', se agrega un mensaje de error a la lista.
    } 
  // Maneja una excepción si la función aún no está implementada.
  } on UnimplementedError {
    print('Tried to call joinWithCommas but failed. \n Did you implement the method?');
    return;
    // Si se produce un UnimplementedError al llamar a la función, se muestra un mensaje indicando que la función no está implementada.

  // Captura cualquier otra excepción que pueda ocurrir.
  } catch (e) {
    print('Tried calling stringify(1, 2, 3, 4 ,5), \n but encountered an exception: ${e.runtimeType}.');
    return;
    // Si se produce cualquier otra excepción, se muestra un mensaje indicando el tipo de excepción.
  }

  // Verifica si hay errores, si no, imprime "Exito!", de lo contrario imprime los errores.
  if (errs.isEmpty) {
    print('Exito!');
  } else {
    errs.forEach(print);
  }
}