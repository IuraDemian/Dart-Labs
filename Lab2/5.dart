import 'dart:io';

/*
Задача 5. Дано послідовність оцінок учня. Підрахувати кількість:
1)	двійок
2)	кількість хороших оцінок (добре, відмінно);
3)	кількість оцінок, які нижче середнього.
*/
void main() 
{
  
  stdout.write("Введіть оцінки через пробіл: ");
  List<int> grades =
  stdin.readLineSync()!.split(" ").map((e) => int.parse(e)).toList();

  int count2 = grades.where((i) => i == 2).length;

  int good = grades.where((i) => i >= 4).length;

  double average = grades.reduce((a, b) => a + b) / grades.length;

  int belowAvg = grades.where((i) => i < average).length;

  print("Кількість двійок: $count2, \nКількість хороших оцінок (4 і 5): $good, \nКількість оцінок нижче середнього ($average): $belowAvg");
}
