import 'package:lab_2_tutorial_2/lab_2_tutorial_2.dart' as lab_2_tutorial_2;

import 'dart:math';
import 'dart:io';

void main() {
  print('Hello world: ${lab_2_tutorial_2.calculate()}!');

  // single line comment we can not write in nexe line
  /* multi line comment
  .... */

  /* nest comments
  /* nested by upper comment*/
  back to the first */

  /// documentation comment
  ///

  /** block document comment */

  /* Statements
    statement is a command, something you tell the computer
    to do.
    all simple statements end with a semicolon.
    print('Hello, Dart Apprentice reader!'); // this is one type of statement

    if is also one type of statement
    if(condition){
      // code block
    }

  */

  /* Expressions
  an doesn’t do something; it is
  something. That is, an expression is a value, or is something
  that can be calculated as a value.
  example of Expression:
  42
  3+2
  "Hello World"
  x
  */
  // this below expression is not giving any error, we don't have assign this value to any variable, so at the next step it will discarded, this will go in garbage
  5 + 2;

  /* arithmatic operator */
  print(3 + 2);
  print(3 - 2);
  print(3 * 2);
  print(3 / 2);
  print(3 % 2);
  print(22 / 7);

  //  integer division
  print(22 ~/ 7);

  //math function
  print(sin(45 * pi / 180));
  print(cos(135 * pi / 180));

  print(sqrt(2));

  print(max(3, 6));
  print(min(2, 0));

  //mini exersice
  print(1 / sqrt(2));
  print(sin((45 * pi) / 180));
  if ((1 / sqrt(2)) == sin((45 * pi) / 180)) {
    print("both are Equal ");
  } else {
    print("hello");
  }

  //variables

  /*
  10, 3.14159
and every other value that you can assign to a variable are
objects in Dart.
*/

/*
Dart doesn’t have the
primitive variable types that exist in some languages.
Everything is an object. Although int and double
look like primitives, they’re subclasses of num, which
is a subclass of Object.
*/

  print(10.isEven);
  print(3.4321.round());

//dart is type-safe language

  int myInt = 5;
// myInt = 3.44; //this will give error

  num myNumber = 10;
  myNumber = 43.23454;

//above is working fine

//dynamic type
  dynamic myVariable = 10;
  myVariable = 45.3222;
  myVariable = "tre";
//above will working fine

  var temp = 56; //we can assign any data types to var
//but type safety is also applied here
  temp = 10;
// temp = 45.34; //this will not be allowed.

  const myConstant = 10;
//const is compile time, we have to specify value while declaring
//while final is runtime if we don't know the value while declaring then we can use final
  final hoursSinceMidnight = DateTime.now().hour;

/* Exersices */
/* 1. Declare a constant of type int called myAge and set it to
your age. */
// const myAge = 19;

/*
2. Declare a variable of type double called averageAge.
Initially, set the variable to your own age. Then, set it to
the average of your age and your best friend’s age.
*/
  double averageAge = 19;
  averageAge = (averageAge + 18) / 2;
  print(averageAge);

/*
3. Create a constant called testNumber and initialize it
with whatever integer you’d like. Next, create another
constant called evenOdd and set it equal to testNumber
modulo 2. Now change testNumber to various numbers.
What do you notice about evenOdd?
*/
  const testNumber = 6;
  const evenOdd = (testNumber % 2);
  print(evenOdd);

/*
Challenge 1: Variables
Declare a constant int called myAge and set it equal to your
age. Also declare an int variable called dogs and set that
equal to the number of dogs you own. Then imagine you
bought a new puppy and increment the dogs variable by one.
*/

  const myAge = 19;
  int dogs = 0;

  dogs++;
  print(dogs);

/*
Challenge 2: Make it compile
Given the following code:
double myValue = 10;
myValue *= 3; // same as myValue = myValue * 3;
// myValue = 30.0;
myValue /= 2; // same as myValue = myValue / 2;
// myValue = 15.0;

Modify the first line so that the code compiles. Did you use
var, int, finalor const?
*/

// int age = 16;
// print(age);
// age = 30;
// print(age);

//or
  var age = 16;
  print(age);
  age = 30;
  print(age);

/*
Challenge 3: Compute the answer
Consider the following code:

const x = 46;
const y = 10;

Work out what each answer equals when you add the
following lines of code to the code above:

const answer1 = (x * 100) + y;
const answer2 = (x * 100) + (y * 100);
const answer3 = (x * 100) + (y / 10);
*/
  const x = 46;
  const y = 10;

  const answer1 = (x * 100) + y;
  const answer2 = (x * 100) + (y * 100);
  const answer3 = (x * 100) + (y / 10);

  print(answer1);
  print(answer2);
  print(answer3);
/*
Challenge 4: Average rating
Declare three constants called rating1, rating2 and
rating3 of type double and assign each a value. Calculate
the average of the three and store the result in a constant
named averageRating.
*/
  double rating1 = 6.44, rating2 = 4.3, rating3 = 5;
  final averageRating = (rating1 + rating2 + rating3) / 3;
  print(averageRating);

/*
Challenge 5: Quadratic equations
A quadratic equation is something of the form

a⋅x2 + b⋅x + c = 0.
The values of x which satisfy this can be solved by using the
equation
x = (-b ± sqrt(b2 - 4⋅a⋅c)) / (2⋅a).

Declare three constants named a, b and c of type double.
Then calculate the two values for x using the equation above
(noting that the ± means plus or minus, so one value of x for
each). Store the results in constants called root1 and root2
of type double.
*/
  //for equal roots
  double a, b, c;
  // double root1, root2, a, b, c;
  // a = 1;
  // b = -2;
  // c = 1;
  // print("root 1 is:  $root1");
  // print("root 2 is:  $root2");
  //for discrimanator > 0
  // a = 2;
  // b = 4;
  // c = -1;
  // double d = (b * b) - (4 * a * c);
  // root1 = (-b + sqrt(d)) / (2 * a);
  // root2 = (-b - sqrt(d)) / (2 * a);
  // print("root 1 is:  $root1");
  // print("root 2 is:  $root2");
  //for discriminator < 0
  a = 2;
  b = 2;
  c = 1;
  double d = -((b * b) - (4 * a * c));

  // root1 = (-b + sqrt((d))) / (2 * a);
  // root2 = (-b - sqrt((d))) / (2 * a);
  stdout.write("root 1 is: ");
  stdout.write("(");
  stdout.write(-b / (2 * a));
  stdout.write(" + ");
  stdout.write(sqrt(d) / (2 * a));
  // stdout.write("i) /");
  stdout.write("i)");

  // print(2 * a);
  stdout.write("root 2 is: ");
  stdout.write("(");
  stdout.write(-b / (2 * a));
  stdout.write(" - ");
  stdout.write(sqrt(d) / (2 * a));
  // stdout.write("i) /");
  stdout.write("i)");
  // print(2 * a);

  // print("root 2 is:  $root2");
  // print()
  double a1 = 4, b1 = 3, c1 = 2, root1, root2;
  double d1 = ((b1 * b1) - (4 * a1 * c1));
  if (d1 >= 0) {
    root1 = (-b1 + sqrt(d1)) / 2;
    root2 = (-b1 - sqrt(d1)) / 2;
  } else {
    d1 = -d1;
    root1 = (-b1 + sqrt(d1));
  }
}
