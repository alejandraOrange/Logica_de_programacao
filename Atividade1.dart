import 'dart:io';

void main() {
  // Solicita ao usuário que insira o primeiro número decimal
  stdout.write("Digite o primeiro número decimal: ");
  double numero1 = double.parse(stdin.readLineSync()!);

  // Solicita ao usuário que insira o segundo número decimal
  stdout.write("Digite o segundo número decimal: ");
  double numero2 = double.parse(stdin.readLineSync()!);

  // Determina o maior e o menor número
  double maiorNumero = numero1 > numero2 ? numero1 : numero2;
  double menorNumero = numero1 < numero2 ? numero1 : numero2;

  // Realiza a divisão e exibe o resultado
  double resultado = maiorNumero / menorNumero;
  print("O resultado da divisão de $maiorNumero por $menorNumero é: $resultado");
}