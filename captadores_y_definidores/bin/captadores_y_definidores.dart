// Ejemplo de Codigo


// Define una excepción para precios inválidos.
class InvalidPriceException implements Exception {
  final String message; // Mensaje de la excepción.

  InvalidPriceException(this.message);  // Constructor que asigna un mensaje a la excepción.

  // Devuelve una representación de cadena de la excepción.
  @override
  String toString() => 'InvalidPriceException: $message';
}

// Clase que representa un carrito de compras.
class ShoppingCart {
  // Lista privada que almacena los precios de los elementos en el carrito.
  List<double> _prices = [];
  
  // Getter para obtener los precios del carrito de compras.
   List<double> getPrices() => _prices;
  
  // Getter para calcular el precio total de todos los artículos en el carrito de compras.
  double get total => _prices.fold(0, (acc, price) => acc + price);
  
  // Setter para actualizar los precios de los artículos en el carrito de compras, lanzando una excepción para precios negativos.
  set prices(List<double> value) {
  // Verifica si hay algún precio negativo en la lista de precios proporcionada.
  if (value.any((price) => price < 0)) {
    throw InvalidPriceException('Prices cannot be negative.');
  }
  
  // Actualiza la lista de precios del carrito con la nueva lista proporcionada.
  _prices = value;
}
}

// Funcion Principal (Don't edit!):
void main() {
  // Se inicializa una variable booleana llamada foundException y se establece en falso.
  var foundException = false;
  
  try {
    final cart = ShoppingCart();
    // Intenta establecer precios que incluyen un precio negativo.
    cart.prices = [12.0, 12.0, -23.0];
  } on InvalidPriceException {
    foundException = true;  // Si se lanza una InvalidPriceException, se establece foundException en verdadero.
  } catch (e) {
    // Imprime un mensaje si se recibe una excepción diferente a la esperada.
    print('Tried setting a negative price and received a ${e.runtimeType} \n instead of an InvalidPriceException.');
    return;
  }
  
  // Imprime un mensaje si no se lanza la InvalidPriceException cuando se espera.
  if (!foundException) {
    print('Tried setting a negative price \n and didn\'t get an InvalidPriceException.');
    return;
  }
  
  final secondCart = ShoppingCart();
  
  try {
    // Establece precios válidos en el segundo carrito.
    secondCart.prices = [1.0, 2.0, 3.0];  // Establece precios válidos en el segundo carrito.
  } catch(e) {
    // Imprime un mensaje si se recibe una excepción al establecer precios válidos.
    print('Tried setting prices with a valid list, \n but received an exception: ${e.runtimeType}.');
    return;
  }
  
  if (secondCart._prices.length != 3) {
    // Imprime un mensaje si la longitud de _prices no es la esperada.
    print('Tried setting prices with a list of three values, \n but _prices ended up having length ${secondCart._prices.length}.');
    return;
  }

  if (secondCart._prices[0] != 1.0 || secondCart._prices[1] != 2.0 || secondCart._prices[2] != 3.0) {
    final vals = secondCart._prices.map((p) => p.toString()).join(', ');
    // Imprime un mensaje si los precios no son los esperados.
    print('Tried setting prices with a list of three values (1, 2, 3), \n but incorrect ones ended up in the price list ($vals) .');
    return;
  }
  
  // Inicializa una variable para almacenar el total de precios del carrito.
  var sum = 0.0;
  
  try {
    sum = secondCart.total; // Intenta obtener el total de los precios del segundo carrito.
  } catch (e) {
    // Imprime un mensaje si se recibe una excepción al intentar obtener el total.
    print('Tried to get total, but received an exception: ${e.runtimeType}.');
    return;
  }
  
  if (sum != 6.0) {
    // Imprime un mensaje si el total calculado no es el esperado.
    print('After setting prices to (1, 2, 3), total returned $sum instead of 6.');
    return;
  }
  
  // Imprime un mensaje de éxito si todas las pruebas son exitosas.
  print('Exito!');
}