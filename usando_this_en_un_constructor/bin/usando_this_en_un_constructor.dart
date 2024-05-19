// --Ejemplo de Codigo

// Define una clase llamada MyClass
class MyClass {
  final int anInt;  // Declara un campo entero de solo lectura llamado 'anInt'.
  final String aString; // Declara un campo de cadena de caracteres de solo lectura llamado 'aString'.
  final double aDouble; // Declara un campo de número de punto flotante de solo lectura llamado 'aDouble'.
  
  // Define un constructor que inicializa los campos de la clase con los valores proporcionados.
  MyClass(this.anInt, this.aString, this.aDouble);
}

// Funcion Principal (Don't edit!):
void main() {
  final errs = <String>[];  // Declara una lista de errores.
  
  try {
    // Crea una instancia de MyClass con valores específicos.
    final obj = MyClass(1, 'two', 3);
    
    // Verifica si el campo 'anInt' de la instancia es diferente de 1.
    if (obj.anInt != 1) {
      // Agrega un mensaje de error a la lista de errores si el valor de 'anInt' no es 1.
      errs.add('Called MyClass(1, \'two\', 3) and got an object with anInt of ${obj.anInt} \n instead of the expected value (1).');
    }

    // Verifica si el campo 'aString' de la instancia es diferente de 'two'.
     if (obj.aString != 'two') {
      // Agrega un mensaje de error a la lista de errores si el valor de 'aString' no es 'two'.
      errs.add('Called MyClass(1, \'two\', 3) and got an object with aString of \'${obj.aString}\' \n instead of the expected value (\'two\').');
    }

    // Verifica si el campo 'aDouble' de la instancia es diferente de 3.
    if (obj.aDouble != 3) {
      // Agrega un mensaje de error a la lista de errores si el valor de 'aDouble' no es 3.
      errs.add('Called MyClass(1, \'two\', 3) and got an object with aDouble of ${obj.aDouble} \n instead of the expected value (3).');
    }
  } catch (e) {
    // Captura cualquier excepción que pueda ocurrir y muestra el tipo de excepción.
    print('Called MyClass(1, \'two\', 3) and got an exception \n of type ${e.runtimeType}.');
  }
  
  // Verifica si la lista de errores está vacía.
  if (errs.isEmpty) {
    // Si no hay errores, muestra 'Exito!'.
    print('Exito!');
  } else {
    // Si hay errores, imprime cada error
    errs.forEach(print);
  }
}