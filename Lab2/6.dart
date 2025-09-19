import 'dart:io';

//Задача 6. Дано послідовність цін товарів та назв (у окремих масивах). Вивести на екран ті, які може собі дозволити користувач (кількість грошей задається).
void main() 
{
  List<String> products = ["Хліб", "Молоко", "Сир", "Кола", "Шоколад", "Яблука"];

  List<double> prices = [31.0, 65.0, 190.0, 39, 55.0, 35.0];

  stdout.write("Введіть кількість грошей: ");
  double money = double.parse(stdin.readLineSync()!);

  print("Ви можете собі дозволити:");

  bool found = false;
  for (int i = 0; i < products.length; i++) 
  {
    if (prices[i] <= money) 
    {
      print("- ${products[i]} (ціна: ${prices[i]} грн)");
      found = true;
    }
  }

  if (!found) 
  {
    print("На жаль, на цю суму нічого купити не можна.");
  }
}
