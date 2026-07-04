class Professor: Person{
    private var _speciality: String
    private var _salary: Double
    private var _courses: [Course] = []

    var speciality: String {
        get { _speciality }
        set { _speciality = newValue }
    }

    var salary: Double {
        get { _salary }
        set { _salary = newValue }
    }

    init(name: String, location: String, speciality: String, salary: Double) {
        self._speciality = speciality
        self._salary = salary
        super.init(name: name, location: location)
    }


    func assignCourse(course: Course) {
        if !self._courses.contains(course) {
            self._courses.append(course)
            print("You assigned successfully to \(course.title)")
        } else {
            print("You are already assigned to \(course.title)")
        }
    }

    func unassignCourse(course: Course) {
        if let index = self._courses.firstIndex(of: course) {
            self._courses.remove(at: index)
            print("You unassigned from \(course.title) successfully")
        } else {
            print("You weren't assigned to \(course.title) before")
        }
    }
}