import 'dart:io';

int LinearSearch(List<int> input, int keyValue) {
  for (int i = 0; i < input.length; i++) {
    if (input[i] == keyValue) {
      return i;
    }
  }
  return -1;
}

void main() {
  List<int> usr_values = [];
  var console_inputs;
  print(
      "Please enter the numbers, if you want exit the program, please enter e..");
  for (;;) {
    console_inputs = stdin.readLineSync();
    if (console_inputs == 'e' || console_inputs == 'E') {
      break;
    }
    usr_values.add(int.parse(console_inputs));
  }

  print("Searcing number.. ");
  console_inputs = stdin.readLineSync();
  if (LinearSearch(usr_values, int.parse(console_inputs)) != -1)
    print(
        "Your index is ${LinearSearch(usr_values, int.parse(console_inputs))}");
  else
    print("Sorry but your number is not here...");
}
