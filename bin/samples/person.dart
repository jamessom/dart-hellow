void main() {
  var person = new Person('James');

  person.printName();
}

class Person {
  String firstName;

  Person(this.firstName); // construtor

  printName() {
    print(firstName);
  }
}