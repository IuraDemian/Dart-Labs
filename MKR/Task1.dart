import 'dart:io';

void main() 
{
  stdout.write("Введіть елементи масиву: ");
  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) 
  {
    print("Масив порожній.");
    return;
  }

  List<double> X = input.split(' ').map((e) => double.parse(e)).toList();

  int n = X.length;

  for (int i = 0; i < n ~/ 2; i++) 
  {
    double temp = X[i];
    X[i] = X[n - 1 - i];
    X[n - 1 - i] = temp;
  }

  print("Масив після перестановки:");
  print(X);
}