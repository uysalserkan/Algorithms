import 'dart:convert';
import 'dart:io';

void main() {
  List<int> numbers = [];
  int scanning_numbers;
  bool swap_Checkers = true;

  print("Please enter the amount of numbers: ");
  var usr_amount = stdin.readLineSync(encoding: Encoding.getByName("utf-8"));
  //  int.parse(usr_amount);
  for (int i = 0; i < int.parse(usr_amount); i++) {
    print("Please enter ${i + 1}. number: ");
    scanning_numbers = int.parse(stdin.readLineSync());
    numbers.add(scanning_numbers);
  }

  for (int i = 0; i < numbers.length; i++) {
    swap_Checkers = false;
    for (int j = 0; j < numbers.length - 1; j++) {
      if (numbers[j] > numbers[j + 1]) {
        swap_Checkers = true;
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }
  print("After the Bubble Sorting the numbers is\n $numbers");
}
