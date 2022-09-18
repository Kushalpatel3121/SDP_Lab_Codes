import 'dart:io';

import 'package:lab_3_tutorial_1/lab_3_tutorial_1.dart' as lab3_tutorial_1;
import 'dart:math';

Function wonderful = (String name) {
  return "hello $name";
};

void main(List<String> arguments) {
  //Loops

  //for and while loops

  //while loops:- repeats a block of code as long as a Boolean condition is true
  /* syntax
    while(condition){
      //body
    }
  */

  //while loops introduce a scope because of their curly braces
  //a loop that never ends is called infinite loop
  const people = ["hello", "hii", "world"];
  people.forEach((person) {
    print(wonderful(person));
  });
  print("*****while loop*****");
  var sum = 1;
  while (sum < 10) {
    sum += 4;
    print(sum);
  }

  //do-while loops:- a variant of while loop
  //in this loop condition is evaluated at the end of the loop rather than begining.
  //thus body of it is always executed at least once

  /* syntex
    do{
      //body
    }while(condition);
  */

  print("*****Do-while loop*****");
  sum = 1;
  do {
    sum += 4;
    print(sum);
  } while (sum < 1);

  //Breaking out of a loop
  //break out from the loop using break statement

  print("*****break*****");
  sum = 1;
  while (true) {
    sum += 4;
    if (sum > 10) {
      break;
    }
  }
  print(sum);

  //A random interlude
  //generate random numbers (in dart:math library)
  print("*****A random interlude*****");
  final random = Random();
  while (random.nextInt(6) + 1 != 6) {
    print('Not a six!');
  }

  /*
    nextInt is a method that generates a random integer between 0 and
    one less than the maximum value you give it,
  */

  //For loops
  print("*****for loop*****");
  for (var i = 0; i < 5; i++) {
    print(i);
  }

  //The continue keyword
  print("*****The continue keyword*****");
  for (var i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      continue;
    }
    print(i);
  }

  //For-in loops
  /*It doesn’t have any sort of index or
    counter variable associated with it, but it makes iterating
    over a collection very convenient.
  */
  print("*****For-in loops*****");
  const myString = 'I ❤ Dart';
  for (var codePoint in myString.runes) {
    print(String.fromCharCode(codePoint));
  }

  //myString.runes is a collection of all the code points in myString.
  //in keyword tells the for-in loop to iterate over the collection in order, and on each iteration, to assign the current code point to the codePoint variable.
  //Since runes is a collection of integers, codePoint is inferred to be an int.
  //String.fromCharCode to convert the code point integer back into a string.

  //For-each loops

  print("*****For-each loops*****");
  const myNumbers = [1, 2, 3]; //one type of collection in dart
  myNumbers.forEach((number) => print(number));

  /*
    The part inside the forEach parentheses is a function, where
    => is that points to the statement that the
    function runs.
  */

  /*
    It has exactly the same meaning as the following, which uses
    { } braces instead of arrow syntax:

  */
  myNumbers.forEach((number) {
    print(number);
  });

  //  Mini-exercises
  /*
    1. Create a variable named counter and set it equal to 0.
    Create a while loop with the condition counter < 10.
    The loop body should print out “counter is X” (where X
    is replaced with the value of counter) and then
    increment counter by 1.

  */
  print("*****mini-exe 1*****");
  var counter = 0;
  while (counter < 10) {
    print("counter is $counter");
    counter++;
  }
  /*
    2. Write a for loop starting at 1 and ending with 10
    inclusive. Print the square of each number.
  */
  print("*****mini exercise 2*****");
  for (int i = 1; i <= 10; i++) {
    stdout.write("${i * i} ");
  }
  print("");
  /*
  3. Write a for-in loop to iterate overthe following
  collection of numbers. Print the square root of each
  number.
  const numbers = [1, 2, 4, 7];
  */
  print("*****mini exercise 3*****");
  const numbers = [1, 2, 4, 7];
  for (var i in numbers) {
    print(sqrt(i));
  }

  /*
  4. Repeat Mini-exercise 3 using a forEach loop.
  */
  print("*****mini exercise 4*****");
  numbers.forEach((number) => print(sqrt(number)));

  // Challenges

  /*
    Challenge 1: Find the error
    What’s wrong with the following code?
    const firstName = 'Bob'; if
    (firstName == 'Bob') {
      const lastName = 'Smith';
    } else if (firstName == 'Ray') {
      const lastName = 'Wenderlich';
    }
  */
  const firstName = 'Bob';
  if (firstName == 'Bob') {
    const lastName = 'Smith';
  } else if (firstName == 'Ray') {
    const lastName = 'Wenderlich';
  }
  // there is no error

  /*
    Challenge 2: Boolean challenge
    In each of the following statements, what is the value of the
    Boolean expression?
  */
  true && true; //true
  false || false; //false
  (true && 1 != 2) || (4 > 3 && 100 < 1); //true
  ((10 / 2) > 3) && ((10 % 2) == 0); //true

  /*
    Challenge 3: Next power of two
    Given a number, determine the next power of two above or
    equal to that number. Powers of two are the numbers in the
    sequence of 21, 22, 23, and so on. You may also recognize the
    series as 1, 2, 4, 8, 16, 32, 64...
  */
  print("*****challange 3*****");
  num number = 1056;
  int power = 0;
  while (number > 1) {
    number /= 2;
    power++;
  }
  print(power);
  /*
  Challenge 4: Fibonacci
  Calculate the nth Fibonacci number. The Fibonacci sequence
  starts with 1, then 1 again, and then all subsequent numbers
  in the sequence are simply the previous two values in the
  sequence added together (1, 1, 2, 3, 5, 8...). You can get a
  refresher here:
  */
  print("*****challange 4*****");
  int n = 5;
  int fib = 0, num1 = 1, num2 = 1;
  for (int i = 2; i < n; i++) {
    fib = num1 + num2;
    num1 = num2;
    num2 = fib;
  }
  print(fib);
  /*
    Challenge 5: How many times?
    In the following for loop, what will be the value of sum, and
    how many iterations will happen?
  */
  print("*****challange 5*****");
  var sum1 = 0, i = 0;
  for (i = 0; i <= 5; i++) {
    sum1 += i;
  }
  print("value of sum is: $sum");
  print("number of iteration: ${i}");
  //6 iteration
  //15

  /*
    Challenge 6: The final countdown
    Print a countdown from 10 to 0.
  */
  print("*****challange 6*****");
  for (var i = 10; i >= 0; i--) {
    print(i);
  }

  /*
    Challenge 7: Print a sequence
    Print the sequence 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6,
    0.7, 0.8, 0.9, 1.0.
  */
  print("*****challange 7*****");
  for (dynamic i = 0.0; i <= 1.0; i++) {
    // print(i / 10);
    print(i);
  }
}
