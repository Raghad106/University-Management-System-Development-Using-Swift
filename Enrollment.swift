class Enrollment: Identifiable, Equatable {
    private static var counter = 0
    private(set) var id: Int
    private var _student: Student
    private var _semester: String
    private var _grade: String

    var enrollmentId: Int {
        get { id }
    }
    var student: Student {
        get { _student }
        set { _student = newValue }
    }
    var semester: String {
        get { _semester }
        set { _semester = newValue }
    }
    var grade: String {
        get { _grade }
        set { _grade = newValue }
    }

    init(student: Student, semester: String, grade: String){
        self._student = student
        self._semester = semester
        self._grade = grade
        Enrollment.counter += 1
        self.id = Enrollment.counter
    }
    static func == (lhs: Enrollment, rhs: Enrollment) -> Bool {
        return lhs.id == rhs.id
    }
    
}