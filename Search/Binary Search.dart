import 'dart:io';

int BinarySearch(List<int> comingInputs, int keyInput) {
  print("#1");
  int startIndex = 0;
  int endIndex = comingInputs.length - 1;
  while (startIndex <= endIndex) {
    print("#1.1");
    int middleIndex = ((startIndex + endIndex) / 2).round();
    

    if (keyInput == comingInputs[middleIndex]) {
      print("#1.2");
      return middleIndex;
    } else if (keyInput < comingInputs[middleIndex]) {
      print("#1.3");
      endIndex = middleIndex - 1;
    } else if (keyInput > comingInputs[middleIndex]) {
      print("#1.4");
      startIndex = middleIndex + 1;
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

  int conclusion = BinarySearch(usr_values, console_inputs);
  if (conclusion == -1) {
    print("The number isn't here. Please come back later..");
  } else {
    print("The number index is: ${conclusion}");
  }
}
