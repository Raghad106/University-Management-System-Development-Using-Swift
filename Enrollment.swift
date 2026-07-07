class Enrollment: Equatable {
    private var _enrollmentId: Int
    private var _student: Student
    private var _semester: String
    private var _grade: String

    var enrollmentId: Int {
        get { _enrollmentId }
        set { _enrollmentId = newValue }
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

    init(enrollmentId: Int, student: Student, semester: String, grade: String){
        self._enrollmentId = enrollmentId
        self._student = student
        self._semester = semester
        self._grade = grade
    }
    static func == (lhs: Enrollment, rhs: Enrollment) -> Bool {
        return lhs._enrollmentId == rhs._enrollmentId
    }
    
}