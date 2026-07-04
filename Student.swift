class Student: Person {
    private var _major: String
    private var _gpa: Double
    private var _enrollments: [Enrollment] = []

    var major: String {
        get { _major }
        set { _major = newValue }
    }

    var gpa: Double {
        get { _gpa }
        set { _gpa = newValue }
    }

    var enrollments: [Enrollment] {
        get { _enrollments }
        set { _enrollments = newValue }
    }

    init(name: String, location: String, major: String, gpa: Double) {
        self._major = major
        self._gpa = gpa
        super.init(name: name, location: location)
    }

    func addEnrollToStudentRecord(enrollment: Enrollment) {
        if !self._enrollments.contains(enrollment) {
            self._enrollments.append(enrollment)
            print("You enrolled successfully in \(enrollment.semester)")
        } else {
            print("You are already enrolled in this before")
        }
    }

    func removeEnrollFromStudentRecord(enrollment: Enrollment) {
        if let index = self._enrollments.firstIndex(of: enrollment) {
            self._enrollments.remove(at: index)
            print("You dropped the enrollment successfully")
        } else {
            print("You didn't enroll in this before")
        }
    }
}