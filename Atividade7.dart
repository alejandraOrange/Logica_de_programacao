import 'dart:io';

void main() {
  // Solicita o número
  stdout.write("Digite um número: ");
  int numero = int.parse(stdin.readLineSync()!);

  int fatorial = calcularFatorial(numero);

  // Verifica se o número é válido
  if (numero < 0) {
    print("Erro: número negativo");
  } else {
    print("O fatorial de $numero é: $fatorial");
  }
}

// Função para calcular o fatorial
int calcularFatorial(int numero) {
  if (numero == 0 || numero == 1) {
    return 1;
  }

 int resultado = numero;

  for (int i = numero - 1; i > 1; i--) {
    resultado *= i;

  }

  return resultado;
}