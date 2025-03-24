import 'dart:io';

const String vogais = 'aeiouAEIOU';
const String consoantes = 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ';


void main() {
  // Solicita o texto
  stdout.write("Digite um texto: ");
  String texto = stdin.readLineSync()!;

  print('Texto: $texto')

  Map<String, int> quantidades = calcularQuantidades(texto); /*as declarações não estão separadas por que com esse comando faz de uma vez a declaração de numeros inteiros e calcula as quantidades*/

  // Imprime as quantidades
  print("Quantidade de vogais: ${quantidades['vogais']}");
  print("Quantidade de consoantes: ${quantidades['consoantes']}");
  print("Quantidade de letras: ${quantidades['letras']}");
  print("Quantidade de palavras: ${quantidades['palavras']}");
   
}

// Função para calcular as quantidades
Map<String, int> calcularQuantidades(String texto) {
  int vogais = 0;
  int consoantes = 0;
   int quantLetras = calcularQuantLetras(texto);
  int quantPalavras = calcularQuantPalavras(texto);

  for (String letra in texto.split('')) {
    if (vogais.contains(letra)) {
      quantVogais++;
    } else if (consoantes.contains(letra)) {
      quantConsoantes++;
    }
  }

  return {
    'vogais': quantVogais,
    'consoantes': quantConsoantes,
    'letras': quantLetras,
    'palavras': quantPalavras,
  };
}

int calcularQuantLetras(String texto) {
  int quantLetras = 0;

  for (String letra in texto.split('')) {
    if (consoantes.contains(letra) || vogais.contains(letra)) {
      quantLetras++;
    }
  }

  return quantLetras;
}

int calcularQuantPalavras(String texto) {
  int quantPalavras = 0;

  for (String palavra in texto.split(' ')) {
      quantPalavras++;
  }

  return quantPalavras;
}