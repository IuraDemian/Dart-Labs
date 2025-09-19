/*
Задача 7. Дано послідовність платіжок протягом року. Знайти сумарну кількість грошей за:
1) за весь рік;
2) у першій половині року;
3) у другій половині року;
4) за літо;
5) за ІІ квартал;
6) за парні місяці (з парними номерами);
7) за місяці, які є початковими у сезоні (весна, літо, осінь, зима).
*/
void main() 
{
  List<double> payments = 
  [
    1200,
    1100,
    1300,
    1500,
    1600,
    1400,
    1700,
    1800,
    1250,
    1350,
    1450,
    1550,
  ];

  double sumYear = payments.reduce((a, b) => a + b);

  double sumFirstHalf = payments.sublist(0, 6).reduce((a, b) => a + b);

  double sumSecondHalf = payments.sublist(6).reduce((a, b) => a + b);

  double sumSummer = payments[5] + payments[6] + payments[7];

  double sumQuarter2 = payments[3] + payments[4] + payments[5];

  double sumEvenMonths = 0;

  for (int i = 1; i < 12; i += 2) 
  {
    sumEvenMonths += payments[i];
  }

  double sumSeasonStarts = payments[2] + payments[5] + payments[8] + payments[11];

  print("Сума за рік: $sumYear");
  print("Сума за 1-е півріччя: $sumFirstHalf");
  print("Сума за 2-е півріччя: $sumSecondHalf");
  print("Сума за літо: $sumSummer");
  print("Сума за 2-ий квартал: $sumQuarter2");
  print("Сума за парні місяці: $sumEvenMonths");
  print("Сума за початкові місяці сезонів: $sumSeasonStarts");
}
