class AccessExample {
    public int pub = 1;          // Public: Accessible everywhere
    private int priv = 2;        // Private: Accessible only in this class
    protected int prot = 3;      // Protected: Accessible in subclasses and same package
    int def = 4;                 // Default: Accessible in the same package

    void show() {
        System.out.println("Public: " + pub);
        System.out.println("Private: " + priv);
        System.out.println("Protected: " + prot);
        System.out.println("Default: " + def);
    }
}

public class Main {
    public static void main(String[] args) {
        AccessExample obj = new AccessExample();
        obj.show();
        System.out.println("Accessing Public: " + obj.pub);  // Accessible
        // System.out.println("Accessing Private: " + obj.priv); // Not accessible
    }
}
