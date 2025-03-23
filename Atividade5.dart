import 'dart:io';

void main() {

  // Solicita os coeficientes
  stdout.write("Digite o coeficiente a: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o coeficiente b: ");
  double b = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o coeficiente c: ");
  double c = double.parse(stdin.readLineSync()!);

  const precisao = 0.0000000001;
  
  double delta = b * b - 4 * a * c; // Calcula o delta

  // Verifica o valor de delta para determinar o número de raízes reais
  if (delta < 0) {
    print("A equação não possui raízes reais.");
  } else if (delta == 0) {
    double x = -b / (2 * a);   // Calcula a raiz única
    print("A equação possui uma raiz real: x = $x");
  } else {
    // Calcula as duas raízes reais
    double raizDelta = raizQuadrada(delta, precisao);
    double x1 = (-b + raizDelta) / (2 * a);
    double x2 = (-b - raizDelta) / (2 * a);

    print('A: $a, B: $b, C: $c');
    print("A equação possui duas raízes reais: x1 = $x1 e x2 = $x2");
  }
}

// Função para calcular a raiz quadrada aproximada
double raizQuadrada(double numero, double precisao) {
  if (numero < 0) {
    print('Erro: não existem raizes reais para o numero $numero');
    return 0;
  }
 
  double r = numero / 2;

  while ((r * r - numero).abs() > precisao) {
    r = (r + numero / r) / 2; 
  }
  return r;

}