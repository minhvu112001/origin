package mvctwo;


import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {
    public static List<Student> getStudents(){
        List<Student> students = new ArrayList<>();
        students.add(new Student("Dang", "Thi", "dangthi@codelean.com"));
        students.add(new Student("Nguyen", "Chien", "nguyenchien@codelean.com"));
        students.add(new Student("Le", "Toan", "letoan@codelean.com"));
        return students;
    }
}
