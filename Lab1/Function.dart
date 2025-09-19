import 'dart:io';

/*
Задача 3. Створити окремі функції, які для 4 чисел знаходять:
1)суму;
2)добуток;
3)середнє арифметичне;
4)мінімальне значення. 
*/

double sum(double a, double b, double c, double d)
{
  return a + b + c + d;
}

double product(double a, double b, double c, double d)
{
  return a * b * c * d;
}

double average(double a, double b, double c, double d)
{
  return (a + b + c + d) / 4;
}

double minNumber(double a, double b, double c, double d)
{
  double min = a;

  if (min > b) min = b;
  if (min > c) min = c;
  if (min > d) min = d;
  return min;
}

void main()
{
  stdout.write("Введіть перше число: ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Введіть друге число: ");
  double b = double.parse(stdin.readLineSync()!);
  stdout.write("Введіть третє число: ");
  double c = double.parse(stdin.readLineSync()!);
  stdout.write("Введіть четверте число: ");
  double d = double.parse(stdin.readLineSync()!);

  print("Сума введених чисел - ${sum(a,b,c,d)}, \nдобуток - ${product(a,b,c,d)}, \nсереднє арифметичне - ${average(a,b,c,d)}, \nмінімальне з цих чисел - ${minNumber(a,b,c,d)}");
}