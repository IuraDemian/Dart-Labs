import 'dart:math';


class TRTriangle
{
  double side;


  TRTriangle() : side = 0;


  TRTriangle.withSide(this.side);


  TRTriangle.copy(TRTriangle other) : side = other.side;


  void input(double value)
  {
    side = value;
  }


  void output()
  {
    print("Довжина сторони трикутника: $side");
  }


  double area() => (sqrt(3) / 4) * side * side;


  double perimeter() => 3 * side;


  TRTriangle operator +(TRTriangle other) => TRTriangle.withSide(side + other.side);


  TRTriangle operator -(TRTriangle other) => TRTriangle.withSide(side - other.side);


  TRTriangle operator *(num k) => TRTriangle.withSide(side * k);
}


void main() {
  TRTriangle t1 = TRTriangle.withSide(4);
  TRTriangle t2 = TRTriangle.withSide(6);


  print("Трикутник 1:");
  t1.output();
  print("Трикутник 2:");
  t2.output();


  print("Площа трикутника 1: ${t1.area()}");
  print("Периметр трикутника 2: ${t2.perimeter()}");


  TRTriangle sum = t1 + t2;
  print("Додавання сторін:");
  sum.output();


  TRTriangle diff = t2 - t1;
  print("Віднімання сторін:");
  diff.output();


  TRTriangle scaled = t1 * 2;
  print("Множення трикутник:");
  scaled.output();
}