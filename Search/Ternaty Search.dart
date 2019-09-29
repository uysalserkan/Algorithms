import 'dart:io';

int TernarySearch(List<int> cValues, int lower, int higher, int keyValue) {
  if (lower <= higher) {
    int middle_one = (lower + (((higher - lower) / 3) as int)).toInt();
    int middle_two = (higher + (((higher - lower) / 3) as int)).toInt();
    if (cValues[middle_one] == keyValue) {
      return middle_one;
    }
    if (cValues[middle_two] == keyValue) {
      return middle_two;
    }
    if (keyValue < cValues[middle_one]) {
      return TernarySearch(cValues, lower, middle_one - 1, keyValue);
    }
    if (keyValue > cValues[middle_two]) {
      return TernarySearch(cValues, middle_two, higher, keyValue);
    } else {
      return TernarySearch(cValues, middle_one + 1, middle_two - 1, keyValue);
    }
  }
  return -1;
}

void main() {
  List<int> usr_values = [];
  var console_inputs;
  print(
    "Welcome to the Binary Search",
  );
  print(
    "Please enter the numbers, if you're done, please enter e..",
  );
  for (;;) {
    console_inputs = stdin.readLineSync();
    if (console_inputs == 'e' || console_inputs == 'E') {
      break;
    }
    usr_values.add(int.parse(console_inputs));
  }

  print("Searcing number.. ");
  console_inputs = int.parse(stdin.readLineSync());

  int result = TernarySearch(usr_values, 0, usr_values.length, console_inputs);
  result == -1
      ? print("Sorry but we cannot find the value into the list")
      : print("The result is: $result");
}
