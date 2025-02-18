//! SOLID PRINCIPLES

//? S - Single Responsibility Principle
//? O - Open/Closed Principle
//? L - Liskov Substitution Principle
//? I - Interface Segregation Principle
//? D - Dependency Inversion Principle

import 'dart:math';

class UserAuthentication {
  void login() {}

  void register() {}

  void logout() {}
}

class SendMessages {
  void sendEmail() {}

  void sendSMS() {}
}

class ManageProducts {
  void getProducts() {}
}

abstract class Shape {
  final int width;
  final int height;

  Shape(this.width, this.height);

  double calculateArea();
}

class Circle extends Shape {
  final int width;
  final int height;

  Circle(this.width, this.height) : super(width, height);

  @override
  double calculateArea() {
    return 3.14 * width / 2 * width / 2;
  }
}

class Triangle extends Shape {
  final int width;
  final int height;

  Triangle(this.width, this.height) : super(width, height);

  @override
  double calculateArea() {
    return 1 / 2 * width * height;
  }
}

class Square extends Shape {
  final int width;
  final int height;

  Square(this.width, this.height) : super(width, height);

  @override
  double calculateArea() {
    return (width * height).toDouble();
  }
}

class Rectangle extends Shape {
  final int width;
  final int height;

  Rectangle(this.width, this.height) : super(width, height);

  @override
  double calculateArea() {
    return (width * height).toDouble();
  }
}

class BeshBurchak extends Shape {
  final int width;
  final int height;

  BeshBurchak(this.width, this.height) : super(width, height);

  @override
  double calculateArea() {
    return (width + height + width / 2 * 12).toDouble();
  }
}

class AreaCalculator {
  double calculate(Shape shape) {
    return shape.calculateArea();
  }
}

// void main() {
//   final circle = Circle(10, 10);
//   final triangle = Triangle(5, 10);
//   final square = Square(2, 2);
//   final rectangle = Rectangle(2, 4);
//   final beshburchak = BeshBurchak(12, 56);

//   final List<Shape> shapes = [circle, triangle, square, rectangle, beshburchak];

//   final calculator = AreaCalculator();

//   for (var i = 0; i < shapes.length; i++) {
//     print(calculator.calculate(shapes[i]));
//   }
// }

abstract class Plane {
  void fly();
}

abstract class HaqiqiySamalyot extends Plane {
  void startEngine();

  void stopEngine();
}

class QiruvchiSamalyot extends HaqiqiySamalyot {
  @override
  void fly() {}

  @override
  void startEngine() {}

  @override
  void stopEngine() {}
}

class YulovchiTashuvchiSamalyot extends HaqiqiySamalyot {
  @override
  void fly() {}

  @override
  void startEngine() {}

  @override
  void stopEngine() {}
}

class QogozSamalyot extends Plane {
  @override
  void fly() {}
}

abstract class Service {
  void sendMessage(String message);
}

class EmailService extends Service {
  @override
  void sendMessage(String message) {
    // send message
  }
}

class SMSService extends Service {
  @override
  void sendMessage(String message) {
    // send message
  }
}

class NotificationService extends Service {
  @override
  void sendMessage(String message) {
    // send message
  }
}

class MessageSender {
  final Service service;

  MessageSender(this.service);

  void send(String message) {
    service.sendMessage(message);
  }
}

void main() {
  // final smsService = SMSService();
  // final emailService = EmailService();
  // final notificationService = NotificationService();

  // final messageSender = MessageSender(smsService);

  // messageSender.send("message");

  final person = Person();

  print(person is Hello);
}

class Hello {
  void hello() {
    print("Hello");
  }
}

class Hi {
  void hello() {
    print("Hi");
  }
}

class Person extends Hello implements Hi {
  @override
  void hello() {}
}
