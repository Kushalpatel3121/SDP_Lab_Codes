import 'package:lab_4_tutorial_1/lab_4_tutorial_1.dart' as lab4_tutorial_1;

void main(List<String> arguments) {
  print('Classes\n');

  //Dart Classes
  /*
      Classes are like architectural blueprints that tell the system 
      how to make an object, where an object is the actual data 
      that’s stored in the computer’s memory

      If a class is the blueprint, then you could say the object is like 
      the house that the blueprint represents

      Classes are a core component of object-oriented 
      programming. They’re used to combine data and functions 
      inside a single structure.

      Functions inside of a class are known as methods, while constructors are 
      special methods you use to create objects from the class.
      
    */

  //  Defining a class
  /*
        lass User { 
          int id = 0;
          String name = '';
        }
      */

  //  Creating an object from a class
  // final user = User();

  // The optional keyword new
  // final user = new User();
  //the new keyword is completely optional now

  //Assigning values to properties
  //user.name = 'Ray';
  // user.id = 42;

  // Printing an object
  // print(user); //Instance of 'User
  /*
      override
      String toString() {
        return 'User(id: $id, name: $name)';
      }
    */

  //  Words that start with @ are called annotations

  // Understanding object serialization
  /*  Serialization is the process of converting a complex data 
          object into a string.
      */
  /*  deserialization, which is simply the process of converting a 
          string back into an object of your data type.
      */

  // Adding a JSON serialization method
  /*  
            tring toJson() {
              return '{"id":$id,"name":"$name"}';
            }
          */
  // Dart has built-in functions in the dart:convert library
  // to serialize and deserialize JSON maps.

  // Cascade notation
  /*
      Dart offers a cascade operator (..) that allows you 
      to chain together multiple assignments on the same object 
      without having to repeat the object name.

      final user = User()
    ..name = 'Ray'
    ..id = 42;

    Note that the semicolon only appears on the last line.
  */
  // print("*****Mini-exercise 1******\n");
  /*
    1. Create a class called Password and give it a string 
    property called value.
  */

  /*
      class Password{
        String value;
      }
    */
  // print("*****Mini-exercise 2******\n");
  /*
    2. Override the toString method of Password so that it prints value.
  */

  /*
      class Password{
        String value;

        @override
        String toString(){
          return ("Password {value: $value}");
        }
      }
    */
  // print("*****Mini-exercise 3******\n");
  /*
      3. Add a method to Password called isValid that returns
      true only if the length of value is greater than 8.
    */

  /*
      class Password{
        String value;

        bool isValid(){
          if(value.length > 8)
            return true;
          else 
            return false;
        }

        @override
        String toString(){
          return ("Password {value: $value}");
        }
      }
    */

  // Constructor
  // Long form constructor
  /*  User(int id, String name) { 
            this.id = id;
            this.name = name;
          }
      */

  // short form constructor
  /*
        User(this.id, this.name);
      */

  // Named constructors
  /*
      Dart also has a second type of generative constructor called a 
      named constructor, which you create by adding an identifier 
      on to the class name. It takes the following pattern:

      ClassName.identifierName()

      User.anonymous() { 
        id = 0;
        name = 'anonymous';
      }
      no need for this keyword
  */

  // Forwarding constructors
  /*
      calling the main constructor 
      from the named constructor. This is called forwarding or
      redirecting. To do that, you use the keyword this again.
    
      User.anonymous() : this(0, 'anonymous');
    */

  // Optional and named parameters
  /*
      MyClass([this.myProperty]);
      MyClass({this.myProperty}); //optional and named
      MyClass({required this.myProperty});
    */

  // Adding named parameters for User
  // User({this.id = 0, this.name = 'anonymous'});

  // Initializer lists
  // Private variables
  /*
      Dart allows you to make variables private by adding an 
      underscore (_) in front of their name

       using an underscore before a 
        variable or method name makes it library private, not class 
        private.

        Another thing you can do is to make the properties immutable, that 
        is, unchangeable. By using immutable properties, you don’t 
        even have to make them private.

          // Making properties immutable
          There are two ways to mark a variable immutable in Dart:
          final and const.

          However, since the compiler won’t know
          what the properties are untilruntime, your only choice here is 
          to use final.

    */

  // Factory constructors
  /* 
        Dart also provides another type of constructor called a factory constructor.
        
        The factory constructor is basically a special method that 
        starts with the factory keyword and returns an object of the 
        class type

        factory User.ray() {
          return User(id: 42, name: 'Ray');
        }

      */

  // print("*****Mini-exercise 1******\n");
  /*
      1.  Make value a final variable, but not private
    */

  /*
      class Password{
        final String value;
      }
    */
  // print("*****Mini-exercise 2******\n");
  /*
      2. Add a const constructor as the only way to initialize a
          Password object
    */

  /*
      class Password{
        const Password(this.value);
        final String value;
      }
    */

  // Dart objects
  /*
      Objects act as references to the instances of the class in 
      memory. That means if you assign one object to another, the 
      other object simply holds a reference to the same object in 
      memory — not a new instance.
      */

  // get
  // bool get isBigId => _id > 1000;

  // set
  // set value(String address) => _address = addres s;

  print("*****Challenge 1******\n");
  /*
      Challenge 1: Bert and Ernie
      Create a Student class with final firstName and lastName
      String properties and a variable grade as an int property. 
      Add a constructor to the class that initializes all the 
      properties. Add a method to the class that nicely formats a 
      Studentfor printing. Use the class to create students bert 
      and ernie with grades of 95 and 85, respectively.
    */
  final bert = Student("bert", "Smith", 95);
  final ernie = Student("ernie", "Joe", 85);
  print(bert);
  print(ernie);

  print("\n*****Challenge 2******\n");
  /*
    Challenge 2: Spheres
    Create a Sphere class with a const constructorthat takes a 
    positive length radius as a named parameter. Add getters 
    for the the volume and surface area but none for the radius. 
    Don’t use the dart:math package but store your own version 
    of pi as a static constant. Use your class to find the volume 
    and surface area of a sphere with a radius of 12.
  */
  const sphere = Sphere(12);
  print(sphere.getSurface());
  print(sphere.getVolume());
}

class Student {
  Student(this.firstName, this.lastName, this.grade);
  final String firstName, lastName;
  final int grade;

  @override
  String toString() {
    return "Student(First Name: $firstName, Last Name: $lastName, Grade: $grade)";
  }
}

class Sphere {
  const Sphere(this.radius);
  final int radius;
  static double pi = 3.14;
  double getVolume() {
    return 4 * pi * radius * radius * radius / 3;
  }

  double getSurface() {
    return 4 * pi * radius * radius;
  }
}

