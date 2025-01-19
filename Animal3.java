abstract class Animal {   
    abstract void sound(); // Abstract Method   
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
