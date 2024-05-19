// --Ejemplo de Codigo

class MyClass {
  // Declara tres variables de tipo entero e inicialízalas.
  int value1 = 2;
  int value2 = 3;
  int value3 = 5;
  
  // Define una propiedad 'product' que devuelve el producto de los tres valores.
  int get product => value1 * value2 * value3;
  
  // Define un método 'incrementValue1' que incrementa el valor de 'value1' en 1.
  void incrementValue1() => value1++;
  
  // Define un método 'joinWithCommas' que toma una lista de cadenas y las une con comas.
  String joinWithCommas(List<String> strings) => strings.join(',');
}


// Prueba tu solución (¡No la edites!):
void main() {
  // Crea una instancia de MyClass.
  final obj = MyClass();
  // Declara una lista de errores inicialmente vacía.
  final errs = <String>[];
  
  // Prueba la propiedad 'product'.
  try {
    final product = obj.product;
    // Comprueba si el producto no es igual a 30.
    if (product != 30) {
       // Agrega un mensaje de error si el producto no es el valor esperado.
      errs.add('La propiedad product devolvio $product \n en lugar del valor esperado (30).'); 
    } 
  } catch (e) {
    // Maneja cualquier excepción que ocurra durante la prueba de 'product'.
    print('Se intento usar MyClass.product, pero se encontro una excepcion: \n ${e.runtimeType}.');
    return;
  }

  // Prueba el método 'incrementValue1'.
  try {
    obj.incrementValue1();
    // Comprueba si el valor de 'value1' no es igual a 3 después de incrementarlo.
    if (obj.value1 != 3) {
      // Agrega un mensaje de error si el valor de 'value1' no es el esperado.
      errs.add('Despues de llamar a incrementValue, value1 fue ${obj.value1} \n en lugar del valor esperado (3).'); 
    } 
  } catch (e) {
    // Maneja cualquier excepción que ocurra durante la prueba de 'incrementValue1'.
    print('Se intento usar MyClass.incrementValue1, pero se encontro una excepcion: \n ${e.runtimeType}.');
    return;
  }

  // Prueba el método 'joinWithCommas'.
  try {
    final joined = obj.joinWithCommas(['one', 'two', 'three']);
    // Comprueba si el resultado de unir las cadenas con comas no es el esperado.
    if (joined != 'one,two,three') {
      // Agrega un mensaje de error si el resultado no es el esperado.
      errs.add('Se intento llamar a joinWithCommas([\'one\', \'two\', \'three\']) \n and received $joined instead of the expected value (\'one,two,three\').'); 
    } 
  } catch (e) {
    // Maneja cualquier excepción que ocurra durante la prueba de 'joinWithCommas'.
    print('Se intento usar MyClass.joinWithCommas, pero se encontro una excepcion: \n ${e.runtimeType}.');
    return;
  }

  // Comprueba si no hay errores.
  if (errs.isEmpty) {
    // Si no hay errores, imprime '¡Éxito!'.
    print('Exito!');
  } else {
    // Si hay errores, imprime cada error.
    errs.forEach(print);
  }
}