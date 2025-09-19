// 11.1. Вивести на екран усі трицифрові числа, у яких перша цифра є більшою або рівною за суму другої і третьої.

void main() 
{
  for (int number = 100; number <= 999; number++) 
  {
    int first = number ~/ 100;  
    int second = (number ~/ 10) % 10;
    int third = number % 10;         

    if (first >= second + third) 
    {
      print(number);
    }
  }
}
