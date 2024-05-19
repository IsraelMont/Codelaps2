// Ejemplo de Codigo

// Define una clase Recipe
class Recipe {
  final List<String> ingredients; // Declara una lista de ingredientes como un campo final de la clase.
  final int calories; // Declara las calorías como un campo final de la clase.
  final double milligramsOfSodium;  // Declara los miligramos de sodio como un campo final de la clase.

  // Constructor constante que inicializa los campos de la clase.
  const Recipe (this.ingredients, this.calories, this.milligramsOfSodium);
}

// Prueba la solución (¡No editar!)
void main() {
  final errs = <String>[];  // Lista de errores encontrados durante la prueba
  
  //Inicia un bloque try para manejar excepciones durante las pruebas.
  try {
    // Intenta crear una instancia de Recipe utilizando el constructor constante
    const obj = Recipe(['1 egg', 'Pat of butter', 'Pinch salt'], 120, 200);
    
    // Verifica si la longitud de la lista de ingredientes es 3
    if (obj.ingredients.length != 3) {
      errs.add('Called Recipe([\'1 egg\', \'Pat of butter\', \'Pinch salt\'], 120, 200) \n and got an object with ingredient list of length ${obj.ingredients.length} rather than the expected length (3).');
    }
    
    // Verifica si las calorías son 120
    if (obj.calories != 120) {
      errs.add('Called Recipe([\'1 egg\', \'Pat of butter\', \'Pinch salt\'], 120, 200) \n and got an object with a calorie value of ${obj.calories} rather than the expected value (120).');
    }
    
    // Verifica si los miligramos de sodio son 200
    if (obj.milligramsOfSodium != 200) {
      errs.add('Called Recipe([\'1 egg\', \'Pat of butter\', \'Pinch salt\'], 120, 200) \n and got an object with a milligramsOfSodium value of ${obj.milligramsOfSodium} rather than the expected value (200).');
    }
  } catch (e) {
    // Agrega un mensaje de error a la lista de errores si la longitud de la lista de ingredientes no es igual a 3.
    print('Tried calling Recipe([\'1 egg\', \'Pat of butter\', \'Pinch salt\'], 120, 200) \n and received a null.');
  }

  // Verifica si la lista de errores esta vacia
  if (errs.isEmpty) {
    // Si no hay errores, imprime "Exito!" indicando que la prueba ha sido exitosa
    print('Success!');
  } else {
    // Si hay errores, imprime cada mensaje de error encontrado durante la prueba
    errs.forEach(print);
  }
}