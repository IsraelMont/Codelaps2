// -- Ejemplo de Codigo

class BigObject {
  int anInt = 0; // Inicializa la propiedad 'anInt' del objeto 'BigObject' con el valor 0.
  String aString = '';  // Inicializa la propiedad 'aString' del objeto 'BigObject' con una cadena vacía.
  List<double> aList = []; // Inicializa la propiedad 'aList' del objeto 'BigObject' con una lista vacía de tipo double.
  bool _done = false; // Inicializa la propiedad '_done' del objeto 'BigObject' con el valor false.
  
  // Define un método 'allDone' dentro de la clase 'BigObject' que establece '_done' en true.
  void allDone() {
    _done = true;
  }
}

// Define una función llamada 'fillBigObject' que toma un objeto 'BigObject' como argumento y devuelve un objeto 'BigObject'.
BigObject fillBigObject(BigObject obj) {
  return obj  // Devuelve el mismo objeto 'obj', pero con las siguientes actualizaciones:
..anInt = 1 // Actualiza la propiedad 'anInt' del objeto 'obj' a 1.
..aString = 'String!' // Actualiza la propiedad 'aString' del objeto 'obj' a 'String!'.
..aList.add(3)  // Agrega el valor 3 a la lista 'aList' del objeto 'obj'.
..allDone();  // Llama al método 'allDone()' del objeto 'obj' para establecer '_done' en true.
}

// Funcion Principal (Don't edit!):
void main() {
  BigObject obj;  // Declara una variable 'obj' de tipo 'BigObject'.

  try {
    // Intenta llenar un objeto 'BigObject' llamando a la función 'fillBigObject' con un nuevo objeto 'BigObject'.
    obj = fillBigObject(BigObject());
  } catch (e) {
    // Si ocurre una excepción durante el llenado del objeto, imprime el tipo de excepción.
    print('Caught an exception of type ${e.runtimeType} \n while running fillBigObject');
    return; // Sale de la función principal.
  }

  final errs = <String>[];  // Inicializa una lista de errores.

  // Verifica si la propiedad 'anInt' del objeto 'obj' es diferente de 1 y, si lo es, 
  // agrega un mensaje de error a la lista.
  if (obj.anInt != 1) {
    errs.add(
        'The value of anInt was ${obj.anInt} \n rather than the expected (1).');
  }
  
  // Verifica si la propiedad 'aString' del objeto 'obj' no es igual a 'String!' y, si lo es, 
  // agrega un mensaje de error a la lista.
  if (obj.aString != 'String!') {
    errs.add(
        'The value of aString was \'${obj.aString}\' \n rather than the expected (\'String!\').');
  }

  // Verifica si la longitud de la lista 'aList' del objeto 'obj' no es 1 y, si no lo es, 
  // agrega un mensaje de error a la lista.
  if (obj.aList.length != 1) {
    errs.add(
        'The length of aList was ${obj.aList.length} \n rather than the expected value (1).');
  } else {
    // Si la longitud de la lista es 1, verifica si el primer elemento no es 3.0 y, si no lo es, 
    // agrega un mensaje de error a la lista.
    if (obj.aList[0] != 3.0) {
      errs.add('The value found in aList was ${obj.aList[0]} \n rather than the expected (3.0).');
    }
  }
  
  // Verifica si el método 'allDone()' del objeto 'obj' no se llamó correctamente y, 
  // si no se llamó, agrega un mensaje de error a la lista.
  if (!obj._done) {
    errs.add('It looks like allDone() wasn\'t called.');
  }

  // Si no hay errores en la lista, imprime 'Exito!'; 
  // de lo contrario, imprime cada error.
  if (errs.isEmpty) {
    print('Exito!');
  } else {
    errs.forEach(print);
  }
}