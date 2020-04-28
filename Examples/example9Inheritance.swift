// Author: Garrett Hansen, CS354 Spring 2020

// This program demonstrates the use of Swift "protocols"
// and inheritance to show object-oriented concepts in Swift.

// Define a swift protocol (comparable to a Java interface, with a few
// minor differences, namely that fields can be put into protocols)
protocol AnimalRules {
    var animalName: String { get set }
    func speak() -> Void
    func printName() -> Void
    init(name: String)
}

// Class animal follows protocol "AnimalRules" and must implement
// (but not necessarily initialize values for) everything
// described in that protocol.
class Animal: AnimalRules {
    var animalName: String
    // Notice the required keyword, this means that every subclass must
    // implement this initializer
    required init(name: String) {
        self.animalName = name
    }

    func printName() -> Void { print(self.animalName) }
    func speak() -> Void { }
}

class Dog: Animal {
    override func speak() -> Void {
        print("Woof!")
    }
}

class Cat: Animal {
    override func speak() -> Void {
        print("Meow!")
    }
}

var dog = Dog(name: "Jack")
dog.printName() // Prints "Jack", not implemented in the Dog class but it is inherited.
dog.speak() // Prints "Woof!"

print()

var cat = Cat(name: "Felix")
cat.printName() // Prints "Felix", again inherited from the Animal class
cat.speak() // Prints "Meow!"