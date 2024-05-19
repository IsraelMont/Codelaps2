// Ejemplo de Codigo

// Define una clase llamada IntegerHolder.
class IntegerHolder {
  IntegerHolder();  // Define un constructor sin parámetros para la clase IntegerHolder.
  
  // Implementa este constructor de fábrica.
  factory IntegerHolder.fromList(List<int> list) {
    // Este constructor de fábrica crea instancias de IntegerSingle, IntegerDouble o IntegerTriple
    // dependiendo del tamaño de la lista pasada como argumento.
    if(list.length == 1){
      // Devuelve una instancia de IntegerSingle con el primer elemento de la lista.
      return IntegerSingle(list[0]);  
    } else if(list.length == 2){
      // Devuelve una instancia de IntegerDouble con los primeros dos elementos de la lista.
      return IntegerDouble(list[0], list[1]); 
    } else if(list.length == 3){
      // Devuelve una instancia de IntegerTriple con los primeros tres elementos de la lista.
      return IntegerTriple(list[0], list[1], list[2]);  
    } else {
      throw Error();  // Devuelve una instancia de IntegerTriple con los primeros tres elementos de la lista.
    }
  }
}

// Devuelve una instancia de IntegerTriple con los primeros tres elementos de la lista.
class IntegerSingle extends IntegerHolder {
  final int a;  // Devuelve una instancia de IntegerTriple con los primeros tres elementos de la lista.
  IntegerSingle(this.a); // Devuelve una instancia de IntegerTriple con los primeros tres elementos de la lista.
}

// Define una subclase de IntegerHolder llamada IntegerDouble.
class IntegerDouble extends IntegerHolder {
  final int a;  // Define un campo final para almacenar el primer entero.
  final int b;  // Define un campo final para almacenar el segundo entero.
  IntegerDouble(this.a, this.b); // Define un constructor que inicializa los campos 'a' y 'b'.
}

// Define una subclase de IntegerHolder llamada IntegerTriple.
class IntegerTriple extends IntegerHolder {
  final int a;  // Define un campo final para almacenar el primer entero.
  final int b;  // Define un campo final para almacenar el segundo entero.
  final int c;  // Define un campo final para almacenar el tercer entero.
  // Define un constructor que inicializa los campos 'a', 'b' y 'c'.
  IntegerTriple(this.a, this.b, this.c);
}

// Pruebas de tu solución (¡No edites!):
void main() {
  final errs = <String>[];  // Crea una lista vacía para almacenar los mensajes de error.

  bool throwed = false;  // Define una bandera para rastrear si se lanzó una excepción.
  
  // Realiza una prueba con una lista vacía para verificar si se implementó el método 'fromList'.
  try {
    IntegerHolder.fromList([]);
  } on UnimplementedError {
    // Si se lanza un UnimplementedError, indica que el método 'fromList' no está implementado.
    print('La prueba fallo. Implementaste el modelo?');
    return; // Termina la ejecución del programa.
  } on Error {
    throwed = true;  // Marca que se lanzó una excepción de cualquier otro tipo.
  } catch (e) {
    // Si se lanza cualquier otra excepción, imprime un mensaje indicando el tipo de excepción.
    print('Se llamo a IntegerSingle.fromList([]) y se obtuvo una excepcion de \n type ${e.runtimeType}.');
    return; // Termina la ejecución del programa.
  }
  
  // Verifica si no se lanzó una excepción de tipo 'Error'.
  if (!throwed) {
    // Si no se lanzó ninguna excepción, agrega un mensaje de error indicando que no se lanzó Error.
    errs.add('Se llamo a IntegerSingle.fromList([]) y no se lanzo Error.');
  } 

  // Realiza pruebas con diferentes listas de entrada para verificar si el método 'fromList' funciona correctamente.
  try {
    final obj = IntegerHolder.fromList([1]);
    
     // Verifica si el objeto devuelto es una instancia de IntegerSingle
    if (obj is! IntegerSingle) {
      errs.add('Se llamo a IntegerHolder.fromList([1]) y se obtuvo un objeto de tipo \n ${obj.runtimeType} instead of IntegerSingle.');
    } else {
      // Verifica si el valor 'a' del objeto IntegerSingle es igual a 1
      if (obj.a != 1) {
        errs.add('Se llamo a IntegerHolder.fromList([1]) y se obtuvo un IntegerSingle con un valor \'a\' de ${obj.a} en lugar del valor esperado (1).');
      }
    }
  } catch (e) {
    // Captura y maneja cualquier excepción que ocurra durante la ejecución del bloque try
    print('Se llamo a IntegerHolder.fromList([]) y se obtuvo una excepción de tipo ${e.runtimeType}.');
    return;
  }

  // Prueba con una lista de dos elementos
  try {
    final obj = IntegerHolder.fromList([1, 2]);
    
    // Verifica si el objeto devuelto por fromList es una instancia de IntegerDouble
    if (obj is! IntegerDouble) {
      // Si no es una instancia de IntegerDouble, agrega un mensaje de error al listado de errores
      errs.add('Se llamo a IntegerHolder.fromList([1, 2]) y se obtuvo un objeto de tipo ${obj.runtimeType} en lugar de IntegerDouble.');
    } else {
      // Si es una instancia de IntegerDouble, verifica si el valor 'a' y 'b' del objeto son los esperados
      if (obj.a != 1) {
        // Si el valor 'a' no es el esperado, agrega un mensaje de error al listado de errores
        errs.add('Se llamo a IntegerHolder.fromList([1, 2]) y se obtuvo un IntegerDouble con \n un valor \'a\' de ${obj.a} en lugar del valor esperado (1).');
      }
      
      if (obj.b != 2) {
        // Si el valor 'b' no es el esperado, agrega un mensaje de error al listado de errores
        errs.add('Se llamo a IntegerHolder.fromList([1, 2]) y se obtuvo un IntegerDouble con \n un valor \'b\' de ${obj.b} en lugar del valor esperado (2).');
      }
    }
  } catch (e) {
     // Si se produce una excepción, imprime el tipo de excepción
    print('Se llamo a IntegerHolder.fromList([1, 2]) y se obtuvo una excepción \n de tipo ${e.runtimeType}.');
    return;
  }

  // Prueba con una lista de tres elementos
  try {
    final obj = IntegerHolder.fromList([1, 2, 3]);
    
    // Verifica si el objeto devuelto por fromList es una instancia de IntegerTriple
    if (obj is! IntegerTriple) {
      // Si no es una instancia de IntegerTriple, agrega un mensaje de error al listado de errores
      errs.add('Se llamo a IntegerHolder.fromList([1, 2, 3]) y se obtuvo un objeto de tipo \n ${obj.runtimeType} en lugar de IntegerTriple.');
    } else {
      // Si es una instancia de IntegerTriple, verifica si el valor 'a', 'b' y 'c' del objeto son los esperados
      if (obj.a != 1) {
        // Si el valor 'a' no es el esperado, agrega un mensaje de error al listado de errores
        errs.add('Se llamo a IntegerHolder.fromList([1, 2, 3]) y se obtuvo un IntegerTriple con \n un valor \'a\' de ${obj.a} en lugar del valor esperado (1).');
      }
      
      if (obj.b != 2) {
        // Si el valor 'b' no es el esperado, agrega un mensaje de error al listado de errores
        errs.add('Called IntegerHolder.fromList([1, 2, 3]) y se obtuvo un IntegerTriple con \n un valor \'b\' de ${obj.b} en lugar del valor esperado (2).');
      }

      if (obj.c != 3) {
        // Si el valor 'c' no es el esperado, agrega un mensaje de error al listado de errores
        errs.add('Called IntegerHolder.fromList([1, 2, 3]) y se obtuvo un IntegerTriple con \n un valor \'c\' de ${obj.b} en lugar del valor esperado (3).');
      }
    }
  } catch (e) {
    // Si se produce una excepción, imprime el tipo de excepción
    print('Se llamo a IntegerHolder.fromList([1, 2, 3])  y se obtuvo una excepción \n de tipo ${e.runtimeType}.');
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