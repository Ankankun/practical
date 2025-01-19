class Student {
    String name;
    String[] subjects;
    int[] marks;

    // Constructor
    Student(String name, String[] subjects, int[] marks) {
        this.name = name;
        this.subjects = subjects;
        this.marks = marks;
    }

    // Method to display student details and marks
    void Display() {
        System.out.println("Student Name: " + name);
        System.out.println("Subjects and Marks:");
        for (int i = 0; i < subjects.length; i++) {
            System.out.println(subjects[i] + ": " + marks[i]);
        }
    }
}

public class Main {
    public static void main(String[] args) {
        // Define subjects and marks
        String[] subjects = { "Math", "Science", "English" };
        int[] marks = { 90, 85, 88 };

        // Create a student object
        Student student = new Student("Surya", subjects, marks);

        // Display student details
        student.Display();
    }
}
