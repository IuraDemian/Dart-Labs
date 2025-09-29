import 'dart:io';

void swapNegPos(List<double> arr) 
{
  int? maxNegIndex;
  int? minPosIndex;

  for (int i = 0; i < arr.length; i++) 
  {
    if (arr[i] < 0) 
    {
      if (maxNegIndex == null || arr[i] < arr[maxNegIndex]) 
      {
        maxNegIndex = i;
      }
    } 
    else if (arr[i] > 0) 
    {
      if (minPosIndex == null || arr[i] < arr[minPosIndex]) 
      {
        minPosIndex = i;
      }
    }
  }

  if (maxNegIndex != null && minPosIndex != null) 
  {
    double temp = arr[maxNegIndex];
    arr[maxNegIndex] = arr[minPosIndex];
    arr[minPosIndex] = temp;
  }
}

void main() {
  stdout.write("Введіть елементи масиву: ");
  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) 
  {
    print("Масив порожній.");
    return;
  }

  List<double> arr = input.split(' ').map((e) => double.parse(e)).toList();

  swapNegPos(arr);

  print("Масив після заміни:");
  print(arr);
}