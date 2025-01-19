class Person {
    String name;
    int age;

    // Constructor with one argument
    Person(String name) {
        this.name = name;
        age = 0; // Default age
    }

    // Constructor with two arguments
    Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    void displayInfo() {
        System.out.println("Name: " + name + ", Age: " + age);
    }
}

public class Main {
    public static void main(String[] args) {
        // Using different constructors
        Person person2 = new Person("Alice");
        Person person3 = new Person("Bob", 25);

        // Displaying information
        person2.displayInfo();
        person3.displayInfo();
    }
}
