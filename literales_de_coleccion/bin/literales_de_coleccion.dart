// --Ejemplo de colecciones

// Asigna a esto una lista que contenga 'a', 'b' y 'c' en ese orden:
final aListOfStrings = ['a', 'b', 'c'];

// Asigna a esto un conjunto que contenga 3, 4 y 5:
final aSetOfInts = {3, 4, 5};

// Asigna a esto un mapa de String a int para que aMapOfStringsToInts['miClave'] devuelva 12:
final aMapOfStringsToInts = {'myKey': 12};

// Asigna a esto una Lista<double> vacía:
final anEmptyListOfDouble = <double>[];

// Asigna a esto un conjunto vacío de String:
final anEmptySetOfString = <String>{};

// Asigna a esto un mapa vacío de double a int:
final anEmptyMapOfDoublesToInts = <double, int>{};


// Prueba tu solución (¡No la edites!):
void main() {
  // Declara una lista de errores inicialmente vacía.
  final errs = <String>[];
  
  // Comprueba si 'aListOfStrings' no es de tipo List<String> o si no tiene una longitud de 3.
  if (aListOfStrings is! List<String>) {
    // Agrega un mensaje de error si 'aListOfStrings' no es del tipo correcto.
    errs.add('aListOfStrings should have the type List<String>.');
  } else if (aListOfStrings.length != 3) {
    // Agrega un mensaje de error si 'aListOfStrings' no tiene una longitud de 3.
    errs.add('aListOfStrings has ${aListOfStrings.length} items in it, \n rather than the expected 3.');
  } else if (aListOfStrings[0] != 'a' || aListOfStrings[1] != 'b' || aListOfStrings[2] != 'c') {
    // Agrega un mensaje de error si 'aListOfStrings' no contiene los valores correctos.
    errs.add('aListOfStrings doesn\'t contain the correct values (\'a\', \'b\', \'c\').');
  }

  // Comprueba si 'aSetOfInts' no es de tipo Set<int> o si no tiene una longitud de 3.
  if (aSetOfInts is! Set<int>) {
    // Agrega un mensaje de error si 'aSetOfInts' no es del tipo correcto.
    errs.add('aSetOfInts should have the type Set<int>.');
  } else if (aSetOfInts.length != 3) {
    // Agrega un mensaje de error si 'aSetOfInts' no tiene una longitud de 3.
    errs.add('aSetOfInts has ${aSetOfInts.length} items in it, \n rather than the expected 3.');
  } else if (!aSetOfInts.contains(3) || !aSetOfInts.contains(4) || !aSetOfInts.contains(5)) {
    // Agrega un mensaje de error si 'aSetOfInts' no contiene los valores correctos.
    errs.add('aSetOfInts doesn\'t contain the correct values (3, 4, 5).');
  }

  // Comprueba si 'aMapOfStringsToInts' no es de tipo Map<String, int> o si no contiene el valor esperado.
  if (aMapOfStringsToInts is! Map<String, int>) {
    // Agrega un mensaje de error si 'aMapOfStringsToInts' no es del tipo correcto.
    errs.add('aMapOfStringsToInts should have the type Map<String, int>.');
  } else if (aMapOfStringsToInts['myKey'] != 12) {
    // Agrega un mensaje de error si 'aMapOfStringsToInts' no contiene el valor esperado.
    errs.add('aMapOfStringsToInts doesn\'t contain the correct values (\'myKey\': 12).');
  }

  // Comprueba si 'anEmptyListOfDouble' no es de tipo List<double> o si no está vacía.
  if (anEmptyListOfDouble is! List<double>) {
    // Agrega un mensaje de error si 'anEmptyListOfDouble' no es del tipo correcto.
    errs.add('anEmptyListOfDouble should have the type List<double>.');
  } else if (anEmptyListOfDouble.isNotEmpty) {
    // Agrega un mensaje de error si 'anEmptyListOfDouble' no está vacía.
    errs.add('anEmptyListOfDouble should be empty.');
  }

  // Comprueba si 'anEmptySetOfString' no es de tipo Set<String> o si no está vacío.
  if (anEmptySetOfString is! Set<String>) {
    // Agrega un mensaje de error si 'anEmptySetOfString' no es del tipo correcto.
    errs.add('anEmptySetOfString should have the type Set<String>.');
  } else if (anEmptySetOfString.isNotEmpty) {
    // Agrega un mensaje de error si 'anEmptySetOfString' no está vacío.
    errs.add('anEmptySetOfString should be empty.');
  }

  // Comprueba si 'anEmptyMapOfDoublesToInts' no es de tipo Map<double, int> o si no está vacío.
  if (anEmptyMapOfDoublesToInts is! Map<double, int>) {
    // Agrega un mensaje de error si 'anEmptyMapOfDoublesToInts' no es del tipo correcto.
    errs.add('anEmptyMapOfDoublesToInts should have the type Map<double, int>.');
  } else if (anEmptyMapOfDoublesToInts.isNotEmpty) {
    // Agrega un mensaje de error si 'anEmptyMapOfDoublesToInts' no está vacío.
    errs.add('anEmptyMapOfDoublesToInts should be empty.');
  }

  // Comprueba si no hay errores.
  if (errs.isEmpty) {
    // Si no hay errores, imprime '¡Éxito!'.
    print('Exito!');
  } else {
    // Si hay errores, imprime cada error.
    errs.forEach(print);
  }

  // ignore_for_file: unnecessary_type_check
}