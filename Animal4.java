interface Animal { // Interface with 1 implementation  
    void sound(); // Abstract Method  
}  

class Dog implements Animal { // Implementing the Animal interface  
    @Override  
    public void sound() { // Method must be public  
        System.out.println("Bark");  
    }  
}  

public class Main {  
    public static void main(String[] args) {  
        Animal myAnimal = new Dog(); // Polymorphism  
        myAnimal.sound(); // Calls Dog's version of sound  
    }  
}
