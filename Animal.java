class Animal {
    void eat() {
        System.out.println("This animal eats food.");
    }
}

class Dog extends Animal {
    void sound() {
        System.out.println("Bark");
    }
}

public class Main {
    public static void main(String[] args) {
        Dog myAnimal = new Dog();
        myAnimal.eat(); // Inherited method
        myAnimal.sound(); // Dog's own method
    }
}
