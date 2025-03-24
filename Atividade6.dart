import 'dart:io';
import 'Atividade5.dart';

void main() {
  // Solicita as medidas dos catetos
  stdout.write("Digite a medida do cateto 1: ");
  double cateto1 = double.parse(stdin.readLineSync()!);

  stdout.write("Digite a medida do cateto 2: ");
  double cateto2 = double.parse(stdin.readLineSync()!);

  // Calcula a soma dos catetos
  double somaCatetos = ((cateto1 * cateto1) + (cateto2 * cateto2));

  // Calcula a hipotenusa
  double hipotenusa = calcularHipotenusa(somaCatetos);

  print("A hipotenusa é: $hipotenusa");
}

double calcularHipotenusa(double somaCatetos) {
  const double precisao = 0.0000000001;

  return raizQuadrada(somaCatetos, precisao);
}