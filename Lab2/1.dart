import 'dart:io';

/*
Задача 1. Дано масив, який містить оцінки з К предметів. 
Знайти середній бал і з’ясувати до якої категорії він відноситься:
(відмінник, двійочник (має хоча би одну двійку), хорошист (оцінки добре і відмінно), трійочник(є хоча би одна трійка)).
*/

void main()
{
  stdout.write("Введіть оцінки через пробіл: ");
  List<int> grades = stdin.readLineSync()!.split(" ").map((e) => int.parse(e)).toList();

  double average = grades.reduce((a, b) => a + b) / grades.length;

  String category;

  if (grades.contains(2)) 
  {
    category = "двійочник";
  } 
  else if (grades.contains(3)) 
  {
    category = "трійочник";
  } 
  else if (grades.every((i) => i >= 4 && i <= 5)) 
  {
    if (grades.every((i) => i == 5)) 
    {
      category = "відмінник";
    } 
    else 
    {
      category = "хорошист";
    }
  } 
  else 
  {
    category = "невизначено";
  }
 
  print("Середній бал: ${average.toStringAsFixed(2)}");
  print("Категорія: $category");
}