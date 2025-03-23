import 'dart:io';

void main() {

  const int numsSize = 5; //Constante para armazenar o tamanho da lista.
  List<int> numeros = [];

 
  for (int i = 0; i < numsSize; i++) { //Pede o input do usuario 5 vezes e armazena cada input na lista.
    stdout.write('Insira o ${i + 1} numero: ');
    int num = Input.getIntInput();
    numeros.add(num);
  }

  print('\nMostrando todos os numeros impares\n');

  for (int i = 0; i < numsSize; i++) { //Loop que repete por todos os elementos.

    
    if (numeros[i] % 2 != 0) {  //Se o numero for impar, mostre ao usuario indicando sua posicao na lista.
      print('${i + 1}. ${numeros[i]}');
    }
  }
}