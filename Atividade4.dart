import 'dart:io';
//mmc: menor múltiplo comum, sem usar a formula = mmc(a, b) = a * (b / mdc(a, b)) e optei por algo mais iterativo

void main() {
  //Recebe os numeros pelo usuario
  stdout.write("Digite o primeiro numero: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o segundo numero: ");
  double num2 = double.parse(stdin.readLineSync()!);

  //Converte para inteiros
  int a = num1.round();
  int b = num2.round();

  int mmc = calcularMMC(a, b); //Calcula o mmc

  print("O mmc de $a e $b é: $mmc"); 
}

// Função para calcular o mmc de dois inteiros
int calcularmmc(int a, int b) {
  int maior = a > b ? a : b;
  while (true) {
    if (maior % a == 0 && maior % b == 0) { //verifica se o número "maior" é um   múltiplo comum de "a" e "b". Se for, devolve o número "maior". Caso contrário, o continua procurando um número maior que seja pareceido tanto de "a" quanto de "b".
      return maior;
    }
    maior++; //incrementa o valor da variável maior em 1.
  }
}
