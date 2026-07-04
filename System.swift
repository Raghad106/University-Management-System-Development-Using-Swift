import Foundation
@main
struct SystemApp {
    static func main() {
        print("SystemApp started")
        let s1 = Student(name: "Raghad", location: "Gaza", major: "Computer Science", gpa: 3.8)
        let s2 = Student(name: "Rahaf", location: "Gaza", major: "Marketing", gpa: 3.8)
        let s3 = Student(name: "Rana", location: "Gaza", major: "Art", gpa: 3.8)

        let students: [Student] = [s1, s2]

        let p1 = Professor(name: "Eman", location: "Egypt", speciality: "Engineering", salary: 5000.0)
        let p2 = Professor(name: "Faten", location: "Gaza", speciality: "Chemistry Science", salary: 5000.0)
        let p3 = Professor(name: "Rania", location: "Gaza", speciality: "Religion Science", salary: 5000.0)

        let professors: [Professor] = [p1, p2]

        let c1 = Course(title: "IOS", credits: 3, professor: p1)
        let c2 = Course(title: "Intro to Chemistry", credits: 3, professor: p2)
        let c3 = Course(title: "Quran", credits: 3, professor: p3)

        let courses: [Course] = [c1, c2]

        University.shared.students = students
        University.shared.professors = professors
        University.shared.courses = courses
        University.shared.addNewStudent(student: s3)
        University.shared.addNewCourse(course: c3)
        University.shared.addNewProfessor(professor: p3)
        let enrollment = Enrollment(student: s1, semester: "Summer 2026", grade: "A")
        s1.addEnrollToStudentRecord(enrollment: enrollment)
        p1.assignCourse(course: c1)
        c1.enrollToTheCourse(enrollment: enrollment)
        let assignment1 = Assignment(title: "IOS Assignment 1", dueDate: Date().addingTimeInterval(60 * 60 * 24 * 7))
        assignment1.submitTheAssignment(fileName: "IOS_Assignment1.pdf", submittedAt: Date(), student: s1)
        c1.addAssignment(assignment: assignment1)
    }
}
