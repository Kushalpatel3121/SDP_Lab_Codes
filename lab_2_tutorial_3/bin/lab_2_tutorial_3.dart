import 'package:lab_2_tutorial_3/lab_2_tutorial_3.dart' as lab2_tutorial_3;

void main() {
  print('Hello world: ${lab2_tutorial_3.calculate()}!');

  const variable = 10;
//we do not need to specify type in const, it is checked by compiler itself, const data is immutable

//"is" keyword (used to check type)
  print(variable is int);
  print(variable is double);

  //double and int both are subtypes of num
  print(variable is num);

  //another method to check type at runtime
  print(variable.runtimeType);

  //type conversion
  var integer = 10;
  var decimal = 3.2;
  //integer = decimal; //Error: A value of type 'double' can't be assigned to a variable of type 'int'.
  // decimal = integer; //Error: A value of type 'int' can't be assigned to a variable of type 'double'.

  //convert double to int
  integer = decimal.toInt();
  print(integer); //in this case there is loss of precision

//operator with mixed types
  const var1 = 10.5;
  const var2 = 3;
  const var3 = var1 * var2;
  print(var3); //31.5
  //const var4 = (var1*var2).toInt(); //ERROR Const variables must be initialized with a constant value.
  // use final instead of const

  //if we want to get ans in int then
  print((var3).toInt());

  const temp = 3;
  // it would be infer to int by Dart but if we want to assign it with double then

  final temp1 = 3.toDouble();

  // or also we can
  const double var4 = 3;

  // casting down
  /*
  You have a number, and you want to check if it’s even. You
  know that integers have an isEven property, so you attempt
  the following:
  */

  num someNumber = 3;
  // print(someNumber.isEven); //ERROR: The getter 'isEven'isn't defined for the type 'num'.
  final someInt = someNumber as int;
  print(someInt.isEven);

//   You need to be careful with type casting, though. If you cast
// to the wrong type, you’ll get a runtime error:

  // final someDouble = someNumber as double;
  // print(someDouble);  //Unhandled exception:
// type 'int' is not a subtype of type 'double' in type cast

  // Mini-exercises
  /*
    1.  Create a constant called age1 and set it equal to 42.
        Create another constant called age2 and set it equal to
        21. Check that the type for both constants has been
        inferred correctly as int by hovering your mouse pointer
        over the variable names in VS Code.
  */
  const age1 = 42;
  const age2 = 21;
  /* ans:- yes, type for both constants has been inferred correctly */

  /*
    2. Create a constant called averageAge and set it equal to
    the average of age1 and age2 using the operation (age1
    + age2) / 2. Hover your mouse pointer over
    averageAge to check the type. Then check the result of
    averageAge. Why is it a double if the components are
    all int?
  */

  const averageAge = (age1 + age2) / 2;
  // inferred as double

  //String
  var greeting = "Hello everyone"; //string
  /*
    Since you used the var keyword, you’re allowed
    to reassign the value of greeting as long as the new value is
    still a string.
  */

  //strings are immutable in dart
  //dart doesn't have char type.

  //Single quotes/Double quotes

  //if there is any apostrophes then use double quotes
  greeting = "It's rainy season";
  print(greeting);

  //or you can also do with \'
  greeting = 'It\'s raining';
  print(greeting);

  // Concatenation
  var msg = 'Hello' + ' my name is ';
  const name = 'Ray';
  msg += name;
// 'Hello my name is Ray'

  /* If you find yourself doing a lot of concatenation, you should
     use a string buffer, which is more efficient. */

  final message = StringBuffer();
  message.write('Hello');
  message.write(' my name is ');
  message.write('Ray');
  print(message
      .toString()); /*

    This creates a mutable location in memory where you can
  add to the string without having to create a new string for
  every change.

  */

  //Interpolation

  const name1 = 'Ray';
  const introduction = 'Hello my name is $name1';
  print(introduction);

  const oneThird = 1 / 3;
  const sentence = 'One third is $oneThird.';
  print(sentence);
  final sentence1 = 'One third is ${oneThird.toStringAsFixed(3)}.';
  print(sentence1);

  //multi line strings
  const bigString = '''
  You can have a string
  that contains multiple
  lines
  by
  doing this.''';
  print(bigString);

  const oneLine = 'This is only '
      'a single '
      'line '
      'at runtime.';
  print(
      oneLine); /*
  
  This does the same thing as if you concatenated each of
those lines with the + operator:
  */

  /*
    However, sometimes you want to ignore any special
    characters that a string might contain. To do that, you can
    cSreate a by putting r in front of the string literal.
  */

  const rawString = r'My name \n is $name.';
  print(rawString);

  //Mini-Exercises

  /*
    1. Create a string constant called firstName and initialize it
    to your first name. Also create a string constant called
    lastName and initialize it to your last name.
  */
  const firstName = 'Foram';
  const lastName = 'Dalsaniya';

  /*
    2. Create a string constant called fullName by adding the
    firstName and lastName constants together, separated
    by a space.
  */
  print("---------- mini-exe 2 ----------");
  const fullName = firstName + " " + lastName;
  print(fullName);

  /*
    3. Using interpolation, create a string constant called
    myDetails that uses the fullName constant to create a
    string introducing yourself. For example, Ray
    Wenderlich’s string would read: Hello, my name is
    Ray Wenderlich.
  */
  print("---------- mini-exe 3 ----------");
  const myDetails = 'Heyy, I am ${fullName}. \nI am from Surat.';
  print(myDetails);

  //Object and dynamic types
  //Dart is an Optionally-typed language
  /*That means you can choose to
use Dart as a dynamically typed language or as
typed language. */

  var myVariable1 = 42;
// myVariable = 'hello'; // compile-time error

  var myVariable; // defaults to dynamic
  myVariable = 42; // OK
  myVariable = 'hello'; // OK

  /*
    If you need to explicitly say that any type is allowed, you
    should consider using the Object? type.
  */

  Object? myVariable2 = 42;
  myVariable2 = 'hello'; // OK

  //? tells that the type can include null value

  //Challanges

  /*
    Challenge 1: Teacher’s grading
      You’re a teacher, and in your class, attendance is worth 20%
      of the grade, the homework is worth 30% and the exam is
      worth 50%. Your student got 90 points for her attendance, 80
      points for her homework and 94 points on her exam.
      Calculate her grade as an integer percentage rounded down.
  */
  print("---------- challange 1 ----------");
  const worth_attendence = 0.2;
  const worth_hw = 0.3;
  const worth_exam = 0.5;

  const attendence = worth_attendence * 90;
  const hw = worth_hw * 80;
  const exam = worth_exam * 94;

  print('integer percentage for attendence is ${attendence}%');
  print('integer percentage for homework is ${hw}%');
  print('integer percentage for exam is ${exam}%');

  /*
    Challenge 2: Find the error
      What is wrong with the following code?
      const name = 'Ray';
      name += ' Wenderlich';
  */
  // const nam = 'Ray';
  // nam += ' Wenderlich';
  //if we declare nam as constant then the value becomes immutable so we can not assign new value to that nam

  /*
    Challenge 3: What type?
      What’s the type of value?
      const value = 10 / 2;
  */
  // const value = 10 / 2; //double

  /*
    When doing operations with basic arithmetic operators
    (+, -, *, /) and mixed types, the result will be a double.
  */

  /*
    Challenge 6: In summary
      What is the value of the constant named summary?
      const number = 10;
      const multiplier = 5;
      final summary = '$number* $multiplier = ${n umber
      * multiplier}';
  */
  print("---------- challange 6 ----------");
  const number = 10;
  const multiplier = 5;
  final summary = '$number* $multiplier = ${number * multiplier}';
  //10* 5 = 50
  print(summary);

  //Dart uses UTF-16 values known as code units to encode Unicode strings.
}

