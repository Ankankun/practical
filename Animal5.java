class Animal {
    String name = "Animal";
    void sound() {
        System.out.println("Animals make sound");
    }
}

class Dog extends Animal {
    String name = "Dog";

    void sound() {
        super.sound(); // Calls the sound method of the parent class
        System.out.println("Dogs bark");
    }
    void displayNames() {
        System.out.println("Name in subclass: " + name);
        System.out.println("Name in superclass: " + super.name); // Accesses the parent class variable
    }
}

public class Main {
    public static void main(String[] args) {
        Dog dog = new Dog();
        dog.sound();
        dog.displayNames();
    }
}
