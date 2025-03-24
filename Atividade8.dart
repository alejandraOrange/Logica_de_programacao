import 'dart:io';

void main() {
  // Solicita o número X
  stdout.write("Digite um número: ");
  int n = int.tryparse(stdin.readLineSync()!);

 // Imprime a tabuada de X
  print("Tabuada de $n:");
}
void mostrarTabuada(int n) {
  for (int i = 1; i <= 9; i++) {
    print("$n x $i = ${n * i}");
  }
}
