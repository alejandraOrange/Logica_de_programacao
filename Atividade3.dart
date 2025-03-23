import 'dart:io';

void main() { //Solicita ao usuario inserir os numeros
  
  stdout.write("Digite o primeiro numero: ");   
  double numero1 = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o segundo numero: ");    
  double numero2 = double.parse(stdin.readLineSync()!);

  double resultado = (numero1 - numero2).abs;     // Realiza a subtração

  print("O resultado de $numero1 - $numero2: ${resultado}"); 
}