class Person {
    private String name;
    private int age;

    // Constructor to initialize fields
    public Person(String name, int age) {
        this.name = name;
        setAge(age); // Use setter for age to ensure validation
    }

    // Getter and Setter for name
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    // Getter and Setter for age with validation
    public int getAge() { return age; }
    public void setAge(int age) {
        if (age >= 0) this.age = age;
        else System.out.println("Age cannot be negative.");
    }

    // Method to display person details
    public void displayInfo() {
        System.out.println("Name: " + name + ", Age: " + age);
    }
}

public class Main {
    public static void main(String[] args) {
        // Create and display a Person object
        Person person = new Person("Alice", 25);
        person.displayInfo();

        // Modify and display updated details
        person.setName("Bob");
        person.setAge(30);
        System.out.println("\nUpdated Details:");
        person.displayInfo();

        // Try setting an invalid age
        person.setAge(-5); // Error message will be shown
    }
}
