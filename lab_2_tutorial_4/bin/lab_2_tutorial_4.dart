import 'package:lab_2_tutorial_4/lab_2_tutorial_4.dart' as lab_2_tutorial_4;

enum AudioState { playing, paused, stopped }

void main(List<String> arguments) {
  print('Hello world: ${lab_2_tutorial_4.calculate()}!');

  //CONTROL FLOW

  //Boolean values
  // it's called bool
  //includes true and false

  const bool yes = true;
  const bool no = false;

  // Testing equality
  /*
    testing for equality using the equality operator, which
    is denoted by ==, that is, two equals signs.
  */
  const doesOneEqualTwo = (1 == 2);
  print(doesOneEqualTwo);

  // ! -> not operator or bang operator

  //  Testing greater and less than
  print(1 > 2);
  print(1 < 2);
  print(1 <= 2);
  print(2 >= 2);

  // Boolean Logic

  //AND operator
  /*
      true && true = true
      true && false = false
      false && true = false
      false && false = false
  */

  //OR operator
  /*
      true || true = true
      true || false = true
      false || true = true
      false || false = false
  */

  //operator precedence
  print(3 > 4 && 1 < 2 || 1 < 4); //true

  //operator precedence order

  /*
      !
      >= > <= <
      == !=
      &&
      ||
  */

  //Overriding precedence with parentheses
  print(3 > 4 && (1 < 2 || 1 < 4));
  print((3 > 4 && 1 < 2) || 1 < 4);

  //Mini-exercises

  /*
    1. Create a constant called myAge and set it to your age.
    Then, create a constant named isTeenager that uses
    Boolean logic to determine if the age denotes someone
    in the age range of 13 to 19.
  */
  print("---------- mini-exe 1 ----------");
  const myAge = 19;
  const isTeenager = ((13 < myAge) && (myAge < 19));
  print(isTeenager);

  /*
    2. Create another constant named maryAge and set it to 30.
    Then, create a constant named bothTeenagers that uses
    Boolean logic to determine if both you and Mary are
    teenagers.
  */
  print("---------- mini-exe 2 ----------");
  const maryAge = 30;
  const isMaryTeenager = ((13 < maryAge) && (maryAge < 19));
  const bothTeenagers = isMaryTeenager && isTeenager;
  print(bothTeenagers);

  /*
    3. Create a String constant named reader and set it to
    your name. Create another String constant named ray
    and set it to 'Ray Wenderlich'. Create a Boolean
    constant named rayIsReader that uses string equality
    to determine if reader and ray are equal.
  */
  print("---------- mini-exe 3 ----------");
  const reader = 'Kushal';
  const ray = 'Ray Wenderlich';
  const rayIsReader = (reader == ray);
  print(rayIsReader);
  print("------------------------------------");
  //if statement
  if (2 > 1) {
    print('Yes, 2 is greater than 1.');
  }

  //else clause
  const animal = 'Fox';
  if (animal == 'Cat' || animal == 'Dog') {
    print('Animal is a house pet.');
  } else {
    print('Animal is not a house pet.');
  }

  //else-if chain
  const trafficLight = 'yellow';
  var command = '';
  if (trafficLight == 'red') {
    command = 'Stop';
  } else if (trafficLight == 'yellow') {
    command = 'Slow down';
  } else if (trafficLight == 'green') {
    command = 'Go';
  } else {
    command = 'INVALID COLOR!';
  }
  print(command);

  //variable scope
  const global = 'Hello, world';
  // void main() {
  const local = 'Hello, main';
  if (2 > 1) {
    const insideIf = 'Hello, anybody?';
    print(global);
    print(local);
    print(insideIf);
  }
  print(global);
  print(local);
// print(insideIf); // Not allowed!
  // }

  //The ternary conditional operator
  //(condition) ? valueIfTrue : valueIfFalse;
  const score = 83;
  const message = (score >= 60) ? 'You passed' : 'You failed';
  print(message);

  //Mini-exercises
  /*
    1. Create a constant named myAge and initialize it with
    your age. Write an if statement to print out “Teenager”
    if your age is between 13 and 19, and “Not a teenager” if
    your age is not between 13 and 19.
  */
  print("---------- mini-exe 1 ----------");
  if (myAge > 13 && myAge < 19) {
    print('Teenager');
  } else {
    print('Not a Teenager');
  }

  /*  
    2. Use a ternary conditional operator to replace the else-
    if statement that you used above. Set the result to a
    variable named answer.
  */
  print("---------- mini-exe 2 ----------");
  var answer = (myAge > 13 && myAge < 19) ? "Teenager" : "Not a Teenager";
  print(answer);

  // Switch statements
  /*
    switch (variable) {
      case value1:
      // code
      break;
      case value2:
      // code
      break;

      ...
      default:
      // code
    }
*/

  //Enumerated types
  //enum (declared outside of the main())

  //Mini-exercises
  /*
    1. Make an enum called AudioState and give it values
    to represent playing, paused and stopped states.
  */

  /*
    2. Create a constant called audioState and give it an
    AudioState value. Write a switch statement that
    prints a message based on the value.
  */
  print("---------- mini-exe 2 ----------");
  const audioState = AudioState.playing;
  switch (audioState) {
    case AudioState.paused:
      print("this is paused state");
      break;
    case AudioState.playing:
      print("this is playing state");
      break;
    case AudioState.stopped:
      print("this is stopped state");
      break;
  }
}
