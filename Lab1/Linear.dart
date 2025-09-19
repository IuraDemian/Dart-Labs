import 'dart:io';

// Зчитайте два цілих числа з клавіатури та виведіть результати ділення першого числа на друге і другого числа на перше.
void main()
{
  stdout.write("Введи перше число: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Введи друге число: ");
  int b = int.parse(stdin.readLineSync()!);

  double ab = a / b;
  double ba = b / a;

  print("результат ділення першого на друге: $ab; другого на першого: $ba");
}