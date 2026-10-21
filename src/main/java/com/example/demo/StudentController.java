package com.example.demo;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class StudentController {

    private final StudentService studentService;

    public StudentController(StudentService studentService) {
        this.studentService = studentService;
    }

    // Display the registration form
    @GetMapping("/")
    public String showForm() {
        return "student-form";
    }

    // Save student details
    @PostMapping("/saveStudent")
    public String saveStudent(Student student) {
        studentService.saveStudent(student);
        return "redirect:/students";
    }

    // Display all registered students
    @GetMapping("/students")
    public String getStudents(Model model) {
        List<Student> students = studentService.getAllStudents();
        model.addAttribute("students", students);

        return "student-list";
    }
}