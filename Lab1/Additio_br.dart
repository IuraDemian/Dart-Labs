import 'dart:io';
import 'dart:math';

/*
Задача 7. Гра в кості. Правила гри:
1) користувач може кинути кості не більше двох разів (користувач сам вирішує чи робити, чи не робити другий кидок);
2) якщо випадає парне число, то кількість балів збільшується на це число;
3) якщо випадає непарне число, то кількість балів зменшується на це число;
4) виграє той, у кого кількість балів більша
*/

void main() 
{
  var random = Random();
  print("=== Гра в кості ===");

  int score1 = random.nextInt(12) + 1;
  stdout.write("Гравцю 1 випало число $score1, хочеш кинути кістку? (так - 1/ні - 0): ");
  int answer1 = int.parse(stdin.readLineSync()!);
  
   if (answer1 == 1) 
   {
      int seconddice1 = random.nextInt(12) + 1;
      if (seconddice1 % 2 == 0)
      {
        score1 += seconddice1;
        print("Гравцю 1 в другому кидку випало $seconddice1, що є парним числом, тому фінальним результатом є $score1");
      }
      else
      {
        score1 -= seconddice1;
        print("Гравцю 1 в другому кидку випало $seconddice1, що не є парним числом, тому фінальним результатом є $score1");
      }
   }
   else
   {
    print("Гравець 1 відмовився кидати другий раз, тому результат залишается: $score1");
   }

  int score2 = random.nextInt(12) + 1;
  stdout.write("Гравцю 2 випало число $score2, хочеш кинути кістку? (так - 1/ні - 0): ");
  int answer2 = int.parse(stdin.readLineSync()!);
   
   if (answer2 == 1) 
   {
      int seconddice2 = random.nextInt(12) + 1;
      if (seconddice2 % 2 == 0)
      {
        score2 += seconddice2;
        print("Гравцю 2 в другому кидку випало $seconddice2, що є парним числом, тому фінальним результатом є $score2");
      }
      else
      {
        score2 -= seconddice2;
        print("Гравцю 2 в другому кидку випало $seconddice2, що не є парним числом, тому фінальним результатом є $score2");
      }
   }
   else
   {
    print("Гравець 1 відмовився кидати другий раз, тому результат залишается: $score2");
   }

   if ( score1 > score2)
   {
    print("Гравцю 1 випало $score1, що є найбільше за $score2 у Гравця 2, тому Гравець 1 є переможцем!");
   }
   else
   {
    print("Гравцю 2 випало $score2, що є найбільше за $score1 у Гравця 1, тому Гравець 2 є переможцем!");
   }
}
