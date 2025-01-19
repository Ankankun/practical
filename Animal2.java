class Animal2 {  
    void sound() {  
        System.out.println("Animal sound");  
    }  
}  

class Dog extends Animal {  
    @Override  
    void sound() {  
        System.out.println("Bark");  
    }  
}  

public class Main {  
    public static void main(String[] args) {  
        Animal myAnimal = new Dog(); // Polymorphism  
        myAnimal.sound(); // Calls Dog's version of sound  
    }  
}
