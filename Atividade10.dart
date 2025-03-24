import 'dart:io';

void main() {
  // Solicita a quantidade de números
  stdout.write("Digite a quantidade de números: ");
  int quantidade = int.parse(stdin.readLineSync()!);

  // Solicita os números para armazenar numa lista
  List<int> numeros = [];
  for (int i = 0; i < quantidade; i++) {
    stdout.write("Digite o número ${i + 1}: ");
    numeros.add(int.parse(stdin.readLineSync()!));
  }

  // Ordena os números em ordem crescente
  List<int> numerosCrescente = List.from(numeros)..sort();
    print("Números em ordem crescente: $numerosCrescente");

  // Ordena os números em ordem decrescente
  List<int> numerosDecrescente = List.from(numeros)..sort((a, b) => b.compareTo(a));
     print("Números em ordem decrescente: $numerosDecrescente");

  // Calcula o maior número
  int maiorNumero = numerosCrescente.last;
    print("Maior número: $maiorNumero");

  // Calcula o menor número
  int menorNumero = numerosCrescente.first;
    print("Menor número: $menorNumero");

  // Calcula a soma dos números
  int soma = numeros.reduce((a, b) => a + b);
    print("Soma dos números: $soma");

  // Calcula a média dos números
  double media = soma / numeros.length;
    print("Média dos números: $media");

  // Calcula a soma dos números pares
  int somaPares = numeros.where((numero) => numero.isEven).fold(0, (a, b) => a + b);
    print("Soma dos números pares: $somaPares");

  // Calcula a soma dos números ímpares
  int somaImpares = numeros.where((numero) => numero.isOdd).fold(0, (a, b) => a + b);
    print("Soma dos números impares: $somaImpares");

}