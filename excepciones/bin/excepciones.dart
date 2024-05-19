// --Ejemplo de Codigo

// Define un nuevo tipo de función llamado VoidFunction, que representa una función que no devuelve ningún valor.
typedef VoidFunction = void Function();

// Define una clase llamada ExceptionWithMessage que representa una excepción con un mensaje asociado.
class ExceptionWithMessage {
  // Define un campo de solo lectura llamado 'message' de tipo String para almacenar el mensaje de la excepción.
  final String message;
  // Constructor constante que inicializa el campo 'message' con el mensaje proporcionado.
  const ExceptionWithMessage(this.message);
}

// Define una interfaz abstracta llamada Logger que proporciona métodos para registrar excepciones.
abstract class Logger {
  // Método abstracto para registrar una excepción con el tipo y opcionalmente un mensaje.
  void logException(Type t, [String? msg]);
  // Método abstracto para indicar que se ha completado el registro de excepciones.
  void doneLogging();
}

// Define una función llamada tryFunction que intentará ejecutar una función proporcionada y manejar las excepciones.
void tryFunction(VoidFunction untrustworthy, Logger logger) {
  try {
    // Intenta ejecutar la función proporcionada.
    untrustworthy();
  } on ExceptionWithMessage catch (e) {
    // Si se lanza una excepción del tipo ExceptionWithMessage, registra la excepción utilizando el método logException del logger.
    logger.logException(e.runtimeType, e.message);
  } on Exception {
    // Si se lanza una excepción de cualquier otro tipo, la registra utilizando el método logException del logger.
    logger.logException(Exception);
  } finally {
    // Finalmente, indica que se ha completado el registro de excepciones llamando al método doneLogging del logger
    logger.doneLogging();
  }
  
}

// Clase que implementa la interfaz Logger para probar la solución.
class MyLogger extends Logger {
  // Campo para almacenar el tipo de la última excepción registrada.
  Type? lastType;
  // Campo para almacenar el mensaje de la última excepción registrada.
  String lastMessage = '';
  // Indicador para verificar si se ha completado el registro de excepciones.
  bool done = false;
  
  // Método para registrar una excepción con su tipo y mensaje.
  @override
  void logException(Type t, [String? message]) {
    // Almacena el tipo y el mensaje de la excepción en los campos correspondientes.
    lastType = t;
    lastMessage = message ?? lastMessage;
  }
  
  // Método para indicar que se ha completado el registro de excepciones.
  @override
  void doneLogging() => done = true;  
}

// Función principal que realiza las pruebas para verificar si tryFunction maneja adecuadamente las excepciones.
void main() {
  // Lista para almacenar mensajes de error encontrados durante las pruebas.
  final errs = <String>[];
  // Instancia de MyLogger para registrar y verificar las excepciones.
  var logger = MyLogger();
  
  try {
    // Ejecuta tryFunction con una función que lanza una excepción genérica.
    tryFunction(() => throw Exception(), logger);
  
    // Verifica si se registró correctamente el tipo de la excepción lanzada.
    if ('${logger.lastType}' != 'Exception' && '${logger.lastType}' != '_Exception') {
      // Agrega un mensaje de error si el tipo de excepción registrado no es el esperado.
      errs.add('Untrustworthy threw an Exception, but a different type was logged: \n ${logger.lastType}.');
    }
    
    // Verifica si se registró correctamente el mensaje de la excepción lanzada
    if (logger.lastMessage != '') {
      // Agrega un mensaje de error si se registró un mensaje de excepción cuando no se esperaba.
      errs.add('Untrustworthy threw an Exception with no message, but a message \n was logged anyway: \'${logger.lastMessage}\'.');
    }
    
    // Verifica si se llamó al método doneLogging después de manejar la excepción.
    if (!logger.done) {
      // Agrega un mensaje de error si no se llamó al método doneLogging después de manejar la excepción.
      errs.add('Untrustworthy threw an Exception, \n and doneLogging() wasn\'t called afterward.');
    }
  } catch (e) {
    // Maneja cualquier excepción no esperada durante las pruebas.
    print('Untrustworthy lanzo una excepcion, y se produjo una excepcion de tipo \n ${e.runtimeType} was unhandled by tryFunction.');
  }
  
  // Restablece el logger para la próxima prueba.
  logger = MyLogger();
  
  try {
    // Ejecuta tryFunction con una función que lanza una excepción con mensaje.
    tryFunction(() => throw ExceptionWithMessage('Hey!'), logger);
  
    // Verifica si se registró correctamente el tipo de la excepción lanzada.
    if (logger.lastType != ExceptionWithMessage) {
      // Agrega un mensaje de error si el tipo de excepción registrado no es el esperado.
      errs.add('Untrustworthy lanzo una ExceptionWithMessage(\'Hey!\'), but a \n different type was logged: ${logger.lastType}.');
    }
    
    // Verifica si se registró correctamente el mensaje de la excepción lanzada.
    if (logger.lastMessage != 'Hey!') {
      // Agrega un mensaje de error si el mensaje de la excepción registrado no es el esperado.
      errs.add('Untrustworthy lanzo una ExceptionWithMessage(\'Hey!\'), but a \n different message was logged: \'${logger.lastMessage}\'.');
    }
    
    // Verifica si se llamó al método doneLogging después de manejar la excepción.
    if (!logger.done) {
      // Agrega un mensaje de error si no se llamó al método doneLogging después de manejar la excepción.
      errs.add('Untrustworthy lanzo una ExceptionWithMessage(\'Hey!\'), \n and doneLogging() wasn\'t called afterward.');
    }
  } catch (e) {
    // Maneja cualquier excepción no esperada durante las pruebas.
    print('Untrustworthy lanzo una ExceptionWithMessage(\'Hey!\'), \n and an exception of type ${e.runtimeType} was unhandled by tryFunction.');
  }
  
  // Restablece el logger para la próxima prueba.
  logger = MyLogger();
  // Bandera para verificar si se capturó correctamente una excepción de tipo String.
  bool caughtStringException = false;

  try {
    // Ejecuta tryFunction con una función que lanza una excepción de tipo String.
    tryFunction(() => throw 'A String', logger);
  } on String {
    // Captura una excepción de tipo String.
    caughtStringException = true;
  }

  // Verifica si se capturó correctamente la excepción de tipo String.
  if (!caughtStringException) {
    // Agrega un mensaje de error si la excepción de tipo String no se manejó correctamente dentro de tryFunction().
    errs.add('Untrustworthy lanzo un string, no se manejo correctamente dentro de tryFunction().');
  }
  
  // Restablece el logger para la próxima prueba.
  logger = MyLogger();
  
  try {
    // Ejecuta tryFunction con una función que no lanza ninguna excepción.
    tryFunction(() {}, logger);
  
    // Verifica si se registró incorrectamente algún tipo de excepción.
    if (logger.lastType != null) {
      // Agrega un mensaje de error si se registró incorrectamente algún tipo de excepción.
      errs.add('Untrustworthy no\'t lanzo una excepcion, \n pero se registro un logged de todos modos: ${logger.lastType}.');
    }
    
    // Verifica si se registró incorrectamente algún mensaje de excepción.
    if (logger.lastMessage != '') {
      // Agrega un mensaje de error si se registró incorrectamente algún mensaje de excepción.
      errs.add('Untrustworthy no\'t lanzo una excepcion con mensaje, \n pero se loggedn un mensaje de todos modos: \'${logger.lastMessage}\'.');
    }
    
    // Verifica si se llamó al método doneLogging después de manejar la excepción.
    if (!logger.done) {
      // Agrega un mensaje de error si no se llamó al método doneLogging después de manejar la excepción.
      errs.add('Untrustworthy no\'t lanzo una excepcion, \n pero doneLogging() no\'t se llamo despues.');
    }
  } catch (e) {
    // Maneja cualquier excepción no esperada durante las pruebas.
    print('Untrustworthy didn\'t throw an exception, \n but an exception of type ${e.runtimeType} was unhandled by tryFunction anyway.');
  }
  
  // Verifica si hubo errores durante las pruebas y muestra los resultados.
  if (errs.isEmpty) {
    // Si no hubo errores, imprime 'Exito!'.
    print('Exito!');
  } else {
    // Si hubo errores, imprime cada mensaje de error.
    errs.forEach(print);
  }
}