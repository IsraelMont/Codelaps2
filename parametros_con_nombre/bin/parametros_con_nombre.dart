// --Ejemplo de Codigo

// Define una clase llamada MyDataObject
class MyDataObject {
  final int anInt;  // Define un campo de solo lectura llamado 'anInt' de tipo entero.
  // Define un campo de solo lectura llamado 'aString' de tipo cadena de caracteres.
  final String aString;
  // Define un campo de solo lectura llamado 'aDouble' de tipo número de punto flotante.
  final double aDouble;

  // Define un constructor con nombre que inicializa los campos de la clase.
  MyDataObject({
    // Inicializa el campo 'anInt' con un valor predeterminado de 1 si no se proporciona al crear una instancia.
    this.anInt = 1,
    // Inicializa el campo 'aString' con un valor predeterminado de 'Old!' si no se proporciona al crear una instancia.
    this.aString = 'Old!',
    // Inicializa el campo 'aDouble' con un valor predeterminado de 2.0 si no se proporciona al crear una instancia.
    this.aDouble = 2.0,
  });
 
  // Define un método llamado 'copyWith' que devuelve una nueva instancia de 'MyDataObject' con campos actualizados opcionalmente.
  MyDataObject copyWith({int? newInt, String? newString, double? newDouble}) {
    return MyDataObject(  // Retorna una nueva instancia de 'MyDataObject'.
      // Usa el valor proporcionado para 'newInt' si está presente, de lo contrario, conserva el valor actual de 'anInt'.
      anInt: newInt ?? anInt,
      // Usa el valor proporcionado para 'newString' si está presente, de lo contrario, conserva el valor actual de 'aString'.
      aString: newString ?? aString,
      // Usa el valor proporcionado para 'newDouble' si está presente, de lo contrario, conserva el valor actual de 'aDouble'.
      aDouble: newDouble ?? aDouble,
    );
  }
}


// Funcion Principal (Don't edit!):
void main() {
  // Crea una instancia de 'MyDataObject' llamada 'source' utilizando el constructor predeterminado.
  final source = MyDataObject();
  final errs = <String>[];  // Inicializa una lista de errores.
  
  // Intenta realizar una operación que podría generar una excepción.
  try {
    // Llama al método 'copyWith' con nuevos valores para los campos especificados.
    final copy = source.copyWith(newInt: 12, newString: 'New!', newDouble: 3.0);
    
    // Comprueba si el campo 'anInt' de la nueva instancia es diferente de 12.
    if (copy.anInt != 12) {
      // Agrega un mensaje de error si el valor de 'anInt' no es el esperado.
      errs.add('Called copyWith(newInt: 12, newString: \'New!\', newDouble: 3.0), \n and the new object\'s anInt was ${copy.anInt} rather than the expected value (12).');
    }
    
    // Comprueba si el campo 'aString' de la nueva instancia es diferente de 'New!'.
    if (copy.aString != 'New!') {
      // Agrega un mensaje de error si el valor de 'aString' no es el esperado.
      errs.add('Called copyWith(newInt: 12, newString: \'New!\', newDouble: 3.0), \n and the new object\'s aString was ${copy.aString} rather than the expected value (\'New!\').');
    }
    
    // Comprueba si el campo 'aDouble' de la nueva instancia es diferente de 3.
    if (copy.aDouble != 3) {
      // Agrega un mensaje de error si el valor de 'aDouble' no es el esperado.
      errs.add('Called copyWith(newInt: 12, newString: \'New!\', newDouble: 3.0), \n and the new object\'s aDouble was ${copy.aDouble} rather than the expected value (3).');
    }
  } catch (e) { // Maneja cualquier excepción que se pueda generar durante la ejecución del bloque try.
    // Imprime el tipo de excepción si se produce.
    print('Called copyWith(newInt: 12, newString: \'New!\', newDouble: 3.0) \n and got an exception: ${e.runtimeType}');
  }
  
  // Intenta realizar otra operación que podría generar una excepción.
  try {
    // Llama al método 'copyWith' sin especificar nuevos valores, lo que debería crear una copia exacta de 'source'.
    final copy = source.copyWith();
    
    // Comprueba si el campo 'anInt' de la nueva instancia es diferente de 1.
    if (copy.anInt != 1) {
      // Agrega un mensaje de error si el valor de 'anInt' no es el esperado.
      errs.add('Called copyWith(), and the new object\'s anInt was ${copy.anInt} \n rather than the expected value (1).');
    }
    
    // Comprueba si el campo 'aString' de la nueva instancia es diferente de 'Old!'.
    if (copy.aString != 'Old!') {
      // Agrega un mensaje de error si el valor de 'aString' no es el esperado.
      errs.add('Called copyWith(), and the new object\'s aString was ${copy.aString} \n rather than the expected value (\'Old!\').');
    }
    
    // Comprueba si el campo 'aDouble' de la nueva instancia es diferente de 2.
    if (copy.aDouble != 2) {
      // Agrega un mensaje de error si el valor de 'aDouble' no es el esperado.
      errs.add('Called copyWith(), and the new object\'s aDouble was ${copy.aDouble} \n rather than the expected value (2).');
    }
  } catch (e) {
    // Maneja cualquier excepción que se pueda generar durante la ejecución del bloque try.
    print('Called copyWith() and got an exception: ${e.runtimeType}');
  }
  
  // Si la lista de errores está vacía, imprime 'Exito!', de lo contrario, imprime cada error.
  if (errs.isEmpty) {
    print('Exito!');
  } else {
    errs.forEach(print);
  }
}