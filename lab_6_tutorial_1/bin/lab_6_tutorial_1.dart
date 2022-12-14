import 'package:test/expect.dart';

import 'dart:convert';
import 'dart:io';
// import 'package:http/http.dart' as http;

//Asynchronous programming is a type of equal programming that permits a unit of work to run independently from the essential application thread.

//A thread is a sequence of commands that a computer executes.

/*
Parallelism:
Parallelism is when multiple tasks run at the same time on 
multiple processors or CPU cores. 

Concurrency:
Concurrency, on the other 
hand, is when multiple tasks take turns running on a single 
CPU core.
*/

//Dart’s single thread runs in what it calls an isolate.

//asynchronous code is not together in time. That is, with asynchronous code, certain tasks are rescheduled to be run in the future when the thread isn’t busy

//Syncronous Code...

class Todo {
  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });
  factory Todo.fromJson(Map<String, Object?> jsonMap) {
    return Todo(
      userId: jsonMap['userId'] as int,
      id: jsonMap['id'] as int,
      title: jsonMap['title'] as String,
      completed: jsonMap['completed'] as bool,
    );
  }
  final int userId;
  final int id;
  final String title;
  final bool completed;
  @override
  String toString() {
    return 'userId: $userId\n'
        'id: $id\n'
        'title: $title\n'
        'completed: $completed';
  }
}

Future<void> main() async {
  print('first');
  print('second');
  print('third');

// Output
/*
first
second
third
*/

//The event loop:
//the event loop is execute tasks that had previously been postponed.
//The event loop has two queues:
//1)a microtask queue
//2)an event queue.

//Priority of execution --> main isolate  --> microtask queue --> event queue
//microtask queue executed first and event queue.

//TUTORIAL : 1
//The Future type : Dart has a type called Future, which is basically a promise to give you the value you really want later.

//States for a future
  /*
    Uncompleted
    Completed with a value 
    Completed with an error
  */

  // print("Before the future.");
  // final value = await Future<int>.delayed(Duration(seconds: 1), () => 42);

  //Output prints after 1 second because of delay.

  //Getting the result with callbacks
  /*
  A callback is an anonymous function that willrun after some event has completed.
  callback opportunities: 
  1.  then
  2.  catchError 
  3.  whenComplete.

  */

  print("before...");
  final myFuture = Future<int>.delayed(Duration(seconds: 1), () => 42)
      .then(
        (value) => print("value: ${value}"),
      )
      .catchError(
        (error) => print("Error: ${error}"),
      )
      .whenComplete(
        () => print("Future is completed!"),
      );
  print("After...");

  //Output:
  /*
  before...
  After...
  value: 42
  Future is completed!
  */

  //Getting the result with async-await
  print('Before the future');
  final value = await Future<int>.delayed(
    Duration(seconds: 1),
    () => 42,
  );
  print('Value: $value');
  print('After the future');

  /*output:
    Run like as a synchronous way...
    beacause of async and await
      Before the future
      Value: 42
      After the future
    */

  /*
    Try-catch blocks with async-await
    Try: If the future is created succefully then try block is executed.return
    catchError: If the future completes with an error, 
                then the try block will immediately be aborted 
                and the catch block will be called.
    whenComplete: no matter whether the future completes with a value or an error, 
                  the finally block will always be called.
    */

  // Asynchronous network requests

  /*
  Future<void> main() async {
    final url = 'https://jsonplaceholder.typicode.com/todos/1';
    final parsedUrl = Uri.parse(url);
    final response = await http.get(parsedUrl);
    final statusCode = response.statusCode;
    if (statusCode == 200) {
      final rawJsonString = response.body;
      final jsonMap = jsonDecode(rawJsonString);
      final todo = Todo.fromJson(jsonMap);
      print(todo);
    } else {
      throw HttpException('$statusCode');
    }
  }
}

//output:
userId: 1
id: 1
title: delectus aut autem
completed: false

*/

// SocketException:
//  You’ll get this exception if there’s no internet connection.
//  HttpException: You’re throwing this exception yourself if the status code is not 200 OK.
//  FormatException: jsonDecode throws this exception if the JSON string from the server isn’t in proper JSON format.

//  Streams
//  A stream, represents multiple final values that will arrive in the future.

/* 
//mini-excersice:1
/// Use the `Future.delayed` constructor to provide a string after two
///    seconds that says "I am from the future."
void main(){
  Future<void>.delayed(
    Duration(seconds: 2),
    ()=>print("I am from the future")
  );
}
*/

/*
//mini-excersice:2
/// Create a `String` variable named `message` that awaits the future to
/// complete with a value.
Future<void> main() async{
  print("Before the Future.");
  final message = await Future<String>.delayed(
    Duration(seconds: 2),
    ()=>"I am from Future."
  );
  print("${message}");
  print("After the Future");
}
*/

/*
Future<void> main() async {
  print("Before the Future.");
  try {
    final message = await Future<String>.delayed(
        Duration(seconds: 2), () => "I am from Future.");
    // throw Exception("error");
    print("${message}");
    print("After the Future");
  } catch (Exception) {
    print(Exception);
  }
}
*/

/*
import 'dart:io';

//In this code:
    //Adding an assets file...
    //Reading as a string...
    //Reading from a stream...
    //Using an asynchronous for loop...
    //Viewing the bytes

Future<void> main() async {
  // final file = File('assets/text.txt');
  // final contents = await file.readAsString();
  // print(contents);

  // final file = File('assets/text.txt');
  // final stream = file.openRead();
  // stream.listen(
  //   (data) {
  //     print(data.length);
  //   },
  // );

  // final file = File('assets/text.txt');
  // final stream = file.openRead();
  // await for (var data in stream) {
  //   print(data.length);
  // }

}
*/

/*
// import 'dart:io';
void main() async {
  final myStream = Stream<int>.periodic(
    Duration(seconds: 1),
    (value) => value
    ).take(10);

    await for(var number in myStream){
      print(number);
      // stdout.write(number);
    }
  }
*/

// Error-heanding in stream:
/*
same as future
onError: work same as catch
onDone: work same as finally
*/

/*
Future<void> main() async {
  /// Because of the asynchronous nature of these challenges. The printed
  /// results will be easier to follow if you only uncomment the method you
  /// want to examine.
  //challenge1();
  await challenge2();
  // await challenge3();
  // await challenge4();
}
*/

/*
/// Challenge 1:
///
/// This is a fun one and will test how well you understand how Dart handles
/// asynchronous tasks. In what order will Dart print the text with the
/// following `print` statements? Why?
void main() {
  print('1 synchronous');
  Future(() => print('2 event queue')).then(
    (value) => print('3 synchronous'),
  );
  Future.microtask(() => print('4 microtask queue'));
  Future.microtask(() => print('5 microtask queue'));
  Future.delayed(
    Duration(seconds: 1),
    () => print('6 event queue'),
  );
  Future(() => print('7 event queue')).then(
    (value) => Future(() => print('8 event queue')),
  );
  Future(() => print('9 event queue')).then(
    (value) => Future.microtask(
      () => print('10 microtask queue'),
    ),
  );
  print('11 synchronous');
}

/// Try to answer before checking. If you were right, give yourself a well
/// deserved pat on the back!
///
///
/// Answer:
///
/// 1 synchronous
/// 11 synchronous
/// 4 microtask queue
/// 5 microtask queue
/// 2 event queue
/// 3 synchronous
/// 7 event queue
/// 9 event queue
/// 10 microtask queue
/// 8 event queue
/// 6 event queue
///
/// Synchronous tasks always run first so that explains 1 and 11. Here is
/// what the event queue and the microtask queue look like after 11 is finished:
///
/// Event queue: 2, 7, 9
/// Microtask queue: 4, 5
/// (Numbers on the left indicate first in line.)
///
/// The microtask queue is always emptied before anything in the event queue
/// gets a chance, so that explains 4 and 5.
///
/// After that 2 gets its turn as first in the event queue. Anything in the
/// `then` callback gets run synchronously immediately after the event queue
/// item so that examplains 3.
///
/// 7 is next in the event queue but when it finishes the `then` callback adds
/// 8 to the end of the event queue. Here is what the queues look like now:
///
/// Event queue: 9, 8
/// Microtask queue:
///
/// Next in line is 9 and when it finishes it adds 10 to the microtask queue:
///
/// Event queue: 8
/// Microtask queue: 10
///
/// Since microtasks take priority it cuts the line in front of 8. After that
/// 8 can go.
///
/// At the end of the one second delay, 6 gets put in the event queue, and since
/// there is no one else in any line, 6 gets run.
///
/// There is no more synchronous code, all the queues are empty, and all the
/// futures have completed, so the program terminates.
/// Challenge 2: Care to make a comment?
///
/// The following link returns a JSON list of comments:
///
/// https://jsonplaceholder.typicode.com/comments
///
/// Create a `Comment` data class and convert the raw JSON to a Dart list of
/// type `List<Comment>`.
*/

/*
//challenge:2
Future<void> main() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/comments');
  final commentList = <Comment>[];
  try {
    final response = await http.get(url);
    final statusCode = response.statusCode;
    if (statusCode == 200) {
      final rawJsonString = response.body;
      final jsonList = jsonDecode(rawJsonString);
      for (var element in jsonList) {
        final comment = Comment.fromJson(element);
        commentList.add(comment);
      }
    } else {
      throw HttpException('$statusCode');
    }
  } on SocketException catch (error) {
    print(error);
  } on HttpException catch (error) {
    print(error);
  } on FormatException catch (error) {
    print(error);
  }

  print('Comment list length: ${commentList.length}');
}

class Comment {
  Comment({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory Comment.fromJson(Map<String, Object?> jsonMap) {
    return Comment(
      postId: jsonMap['postId'] as int,
      id: jsonMap['id'] as int,
      name: jsonMap['name'] as String,
      email: jsonMap['email'] as String,
      body: jsonMap['body'] as String,
    );
  }

  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  @override
  String toString() {
    return '$postId, $id, $name, $email, $body';
  }
}
*/

/*
/// Challenge 3: Data stream
///
/// The following code allows you to stream content from the given URL:
///
/// ```
/// final url = Uri.parse('https://raywenderlich.com');
/// final client = http.Client();
/// final request = http.Request('GET', url);
/// final response = await client.send(request);
/// final stream = response.stream;
/// ```
///
/// Your challenge is to transform the stream from bytes to strings
/// and see how many bytes each data chunk is. Add error handling,
/// and when the stream is finished, close the client.

Future<void> main() async {
  final url = Uri.parse('https://raywenderlich.com');
  final client = http.Client();
  try {
    final request = http.Request('GET', url);
    final response = await client.send(request);
    final stream = response.stream;
    await for (var data in stream.transform(utf8.decoder)) {
      print(data.length);
    }
  } on Exception catch (error) {
    print(error);
  } finally {
    client.close;
  }
}
*/

  /// Challenge 4: Fibonacci from afar
  ///
  /// In Challenge 4 of Chapter 4, you wrote some code to calculate the *n*th
  /// Fibonacci number. Now repeat that challenge but run the code in a separate
  /// isolate. Pass the value of _n_ to the new isolate as an argument, and send
  /// the result back to the main isolate.

  /*
  Future<void> main() async {
    final receivePort = ReceivePort();
    final n = 10;
    final arguments = {
      'sendPort': receivePort.sendPort,
      'n': n,
    };

    final isolate = await Isolate.spawn(
      fibonacci,
      arguments,
    );

    receivePort.listen((message) {
      print('Fibonacci number $n is $message.');
      receivePort.close();
      isolate.kill();
    });
  }

  void fibonacci(Map<String, Object> arguments) {
    final sendPort = arguments['sendPort'] as SendPort;
    final n = arguments['n'] as int;
    var current = 1;
    var previous = 1;
    var done = 2;
    while (done < n) {
      final next = current + previous;
      previous = current;
      current = next;
      done += 1;
    }
    sendPort.send(current);
  }
  */
}

