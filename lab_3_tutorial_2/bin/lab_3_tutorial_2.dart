import 'dart:math';

import 'package:lab_3_tutorial_2/lab_3_tutorial_2.dart' as lab3_tutorial_2;

void main(List<String> arguments) {
  print("Che 5: Functions");

//    A function is one small task, or sometimes a collection of several
// smaller, related tasks that you can use in conjunction with
// other functions to accomplish a larger task

  // Function basics
  /* You can think of functions like machines; they take 
    something you provide to them (the input), and produce 
    something different (the output).
  */

  //Don't repeat
  /*
    repeating that code in multiple spots presents at least two problems.
    1) The first  problem is that you’re duplicating effort by having this 
       code in multiple places in your program.
    2) The second, and more troubling problem, is that if you need to change 
      the logic in that bit of code later on, you’ll have to track down all of 
      those instances of the code and change them in the same way.
  */

  //Functions are one of the main solutions to the duplication problem

  //  Anatomy of a Dart function
  /*a function consists of a return type, a name, a parameterlist 
    in parentheses and a body enclosed in braces.
  */

  //return type: any type can be return including void
  // Function Name: should follow lowerCamelCase
  // Parameteres: they are input to the functions, parameter name should also be written in lowerCamelCase
  //return value: it should match with return type

  /* Function Signature:
      The return type, function name and parameters are collectively known as the function signature.
  */
  print("");
  print("*****Function Example*****");

  //Function declared outside of main()
  //Dart supports top-level functions, which are functions that
  //aren’t inside a class or another function.

  //when a function is inside a class, it’s called a method

  const input = 12;
  final output = compliment(input);
  print(output);

  //Parameters and argument
  /*
      A Parameter is the name and type that you define as an input for your function
      and argument is actual value that you pass in
      A parameter is abstract and 
      argument is concrete
  */

  //More about parameters

  //we can use multiple parameter
  /*
        void helloPersonAndPet(String person, String pet) {
          print('Hello, $person, and your furry friend,$pet!');
      */
  //Parameters like the ones above are called Positional Parameters, because
  //you have to supply the arguments in the same order that you defined
  //the parameters when you wrote the function.

  // Making parameters optional
  /*
          To indicate that a parameter is optional, you surround the 
          parameter with square brackets and add a question mark 
          after the type
      */
  /*
        String fullName(String first, String last, [String? title]) {
          if (title != null) {
            return '$title $first $last';
          } else {
            return '$first $last';
          }
        }
      */
  // Note:
  /* the question mark in string? is not written after the type;
          it's an integral part of the type, thai is the nullable string
      */

  //providing default arguments
  /*
         Dart gives you the power to change the default 
         value of any parameter in your function by using the assignment operator.
      */
  /*
        bool withinTolerance(int value, [int min = 0, int max = 10]) {
          return min <= value && value <= max;
        }

        withinTolerance(15) //false
        withinTolerance(5) //true
        withinTolerance(9, 7, 11) // true
      */
  //Naming parameters
  /*
        Dart allows you to use to make the meaning of the parameters 
        more clearin function calls.
      */
  /*
        To create a named parameter, you surround it with curly 
        braces instead of square brackets.

        withinTolerance(9, min: 7, max: 11) // true
      */
  /*
        bool withinTolerance(int value, {int min = 0, int max = 10}) {
          return min <= value && value <= max;
        }
      */
  /*
        min and max are surrounded by braces, which means you must
        use the parameter names when you provide their argument 
        values to the function.

        Like, square brackets, curly braces make the parameters inside 
        optional. Since value isn’t inside the braces, though, it’s still 
        required.

        you don’t have to use them in the exact order in which they were defined
        For ex.
        withinTolerance(9, min: 7, max: 11) // true 
        withinTolerance(9, max: 11, min: 7) // true
        both are equivalent
        withinTolerance(5) //true
        withinTolerance(5, min: 7)  //false
        withinTolerance(15, max: 20)  //true

      */
  //  Making named parameters required
  /*
          to make any parameter require keeping as named parameter, include that parameter in
          curly braces and adding the required keyword in front 
        */
  /*
          bool withinTolerance({
                  required int value,
                  int min = 0,
                  int max = 10,
          }) {
              return min <= value && value <= max;
          }
        */

  //  Writing good functions
  //writing DRY code is one of the technique to write good functions
  //others things that should be taken care are:

  //  Avoiding side effects
  /*When you write a function, you know what the inputs are: the
            parameters. You also know what the output is: the return 
            value. Anything beyond that, that is, anything that affects the 
            world outside of the function, is a side effect.

            void hello() { 
              print('Hello!');
            }
              Printing something to the console is a side effect, because 
              it’s affecting the world outside of the function. rather we can write above function
              to resolve side effect

              String hello() { 
                return 'Hello!';
              }
          */

  //   Pure Functions:- they always return the same output for any given input.

  //  Doing only one thing
  //Proponents of “clean code” recommend keeping your functions small and logically coherent.
  /*
              If a function is too big, or contains unrelated parts, 
              consider breaking it into smaller functions.
            */

  //  Choosing good names
  //You should always give your functions names that describe exactly what they do.
  /*
              there are a few additional naming 
              conventions that Dart programmers like to follow. These are 
              recommendations, not requirements, but keep them in mind
              as you code

              ->  Use noun phrases for pure functions; that is, ones 
                  without side effects
                  ex. use averageTemperature instead of getAverageTemperature 
              
              ->  Use verb phrases for functions with side effects. 
                  ex. updateDatabase or printHello.
              
              ->  Don’trepeat parameter names in the function name.
                  ex. use cube(int number) instead of cubeNumber(int number)
  
          */

  // Optional types
  /*
          Dart is an optionally-typed language, so it’s possible to omit 
          the types from your function declaration.
          compliment(number){
            return '$number is a very nice number.';
          }

          Dart can infer that the return type here is String, but it has 
          to fall back on dynamic forthe unknown parameter type. above is same as

          String compliment(dynamic number) {
            return '$number is a very nice number.';
          }
        */
  print("");
  print("*****Mini-exercise 1*****");
  /*
    1. Write a function named youAreWonderful, with a String 
    parameter called name. It should return a string using 
    name, and say something like “You’re wonderful, Bob.”
  */
  String youAreWonderful(String name) {
    return "You're wonderful, $name";
  }

  print(youAreWonderful("Bob"));

  print("");
  print("*****Mini-exercise 2*****");
  /*
    2. Add another int parameter to that function called 
    numberPeople so that the function returns something 
    like “You’re wonderful, Bob. 10 people think so.”
  */
  String youAreWonderfull(String name, int people) {
    return "You're wonderful, $name. $people think so";
  }

  print(youAreWonderfull("Bob", 10));

  print("");
  print("*****Mini-exercise 3*****");
  /*
    3. Make both inputs named parameters. Make name
    required and set numberPeople to have a default of 30.
  */
  String youAreWonderFul({required String name, int numberPeople = 30}) {
    return "You're wonderful, $name. $numberPeople think so";
  }

  print(youAreWonderFul(name: "Bob"));

  //  Anonymous Functions
  //If you remove the return type and the function name,
  //then what you have left is an anonymous function
  //The return type will be inferred from the return value of the function body

  //First-class citizens
  /*
        In Dart, functions are . That means you 
        can treat them like any other othertype, assigning functions 
        as values to variables and even passing functions around as 
        parameters or returning them from other functions
      */

  //  Assigning functions to variables

  // int number = 4;
  // String greeting = 'hello';
  // bool isHungry = true;
  // Function multiply = (int a, int b) {
  //   return a * b;
  // };

  //  print(multiply(2, 3));

  //Passing functions to functions
  /*  
          void namedFunction(Function anonymousFunction) {
            // function body
          }
      */

  //Returning functions from functions
  /*  
        Function namedFunction() { 
          return () {
            print('hello');
          };
        }
      */

  //  Returning a function
  /*  
        Function applyMultiplier(num multiplier) { 
          return (num value) {
              return value * multiplier;
          };
        }
      */

  print("");
  print("*****For each loop*****");

  //  Anonymous functions in forEach loops
  const numbers = [1, 2, 3];
  numbers.forEach((number) {
    final tripled = number * 3;
    print(tripled);
  });

  //  Closures and scope
  //Anonymous functions in Dart act as what are known as closures
  //closure means "close around" the surrounding scope and therefore has access to
  //variables and functions defined within that scope
  //A scope in Dart is defined by a pair of curly braces.

  print("");
  print("*****Mini-exercise 1*****");

  /*
    1. Change the youAreWonderfulfunction in the first mini-exercise of this chapter 
    into an anonymous function. Assign it to a variable called wonderful.
  */
  Function anonymousFunc = (String name) {
    return "You're wonderful, $name";
  };
  print(anonymousFunc("Bob"));

  print("");
  print("*****Mini-exercise 2*****");
  /*
    2. Using forEach, print a message telling the people in the 
    following list that they’re wonderful.
  */
  const lst = ["Chris", "Tiffani", "Pabllo"];
  lst.forEach((element) {
    print(anonymousFunc(element));
  });

  //  Arrow functions
  // int add(int a, int b) => a + b;
  //arrow syntax with anonymous function
  //(parameters) => expression;

  print("");
  print("*****Mini-exercise*****");
  /*
    Change the forEach loop in the previous “You’re wonderful” 
    mini-exercise to use arrow syntax.
  */
  lst.forEach((element) => print(anonymousFunc(element)));

  print("");
  print("*****Challange 1*****");
  /*
    Challenge 1: Prime time
    Write a function that checks if a number is prime.
  */
  bool Prime(int n) {
    if (n == 1) return false;
    if (n == 2) return true;
    for (int i = 2; i <= sqrt(n); i++) {
      if (n % i == 0) {
        print("i is: $i");
        return false;
      }
    }
    return true;
  }

  print(Prime(3));
  print(Prime(6));
  print(Prime(133));

  print("");
  print("*****Challange 2*****");
  /*
    Challenge 2: Can you repeat that?
    Write a function named repeatTask with the following definition:
    
    int repeatTask(int times, int input, Function task)

    It repeats a given task on inputfor times number of times.
    Pass an anonymous function to repeatTask to square the 
    input of 2 four times. Confirm that you get the result 65536, 
    since 2 squared is 4, 4 squared is 16, 16 squared is 256, and
    256 squared is 65536.
  */
  int repeatTask(int times, int input, Function task) {
    while (times-- != 0) {
      input = task(input);
    }
    return input;
  }

  Function task = (int n) {
    return n * n;
  };
  print(repeatTask(4, 2, task));

  print("");
  print("*****Challange 3*****");
  /*
    Challenge 3: Darts and arrows Update Challenge 2 to use arrow syntax
  */

  // Function task = (int n) => n * n;
}

String compliment(int number) {
  return '$number is a very nice number.';
}

