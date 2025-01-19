class Calculator {  
    int add(int a, int b) {  
        return a + b;  
    }  

    int add(int a, int b, int c) {  
        return a + b + c;  
    }  
}  

public class Main {  
    public static void main(String[] args) {  
        Calculator calc = new Calculator();  
        System.out.println(calc.add(10, 20));        // Calls first add method  
        System.out.println(calc.add(10, 20, 30));    // Calls second add method  
    }  
}
