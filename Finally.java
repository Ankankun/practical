public class Finally {
    public static void main(String[] args) {
        try {
            int num = 10 / 0; // Throws ArithmeticException
            System.out.println(num);
        } catch (ArithmeticException e) {
            System.out.println("Cannot divide by zero.");
        } finally {
            System.out.println("Finally Block always executed.");
        }
    }
}
