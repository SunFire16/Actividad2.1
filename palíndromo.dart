import "dart:io";

bool esPalindromo(String? cadena) {
  if (cadena == null) {
    return false;
  }
  
  final cleanCadena = cadena.replaceAll(RegExp(r'[^\w]'), '').toLowerCase();
  return cleanCadena == cleanCadena.split('').reversed.join('');
}

void main() {
  print("Ingrese una palabra o frase para verificar si es un palíndromo:");
  String? userInput = stdin.readLineSync();
  
  if (esPalindromo(userInput)) {
    print("Es un palíndromo!");
  } else {
    print("No es un palíndromo.");
  }
}

