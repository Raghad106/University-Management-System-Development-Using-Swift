class University {
    static let shared = University()
    private var _professors: [Professor] = []
    private var _students: [Student] = []
    private var _courses: [Course] = []
    private init() { }

    var professors: [Professor] {
        get { _professors }
        set { _professors = newValue }
    }

    var students: [Student] {
        get { _students }
        set { _students = newValue }
    }

    var courses: [Course] {
        get { _courses }
        set { _courses = newValue }
    }

    // Mange Professors (Admin operation)
    func addNewProfessor(professor: Professor){
        if(!self._professors.contains(professor))
        {
            self._professors.append(professor)
            print("You added a \(professor.name) sucessfully")
        }
        else{
            print("\(professor.name) is already in the system")
            
        }
    }

    func removeProfessor(professor: Professor){
        if(self._professors.contains(professor))
        {
            if let index = self._professors.firstIndex(of: professor){
                self._professors.remove(at: index)
                print("\(professor.name) removed sucessfully")
            }
        }
        else{
            print("You didn't add \(professor.name) before")
            
        }
    }

    // Mange Students (Admin operation)
    func addNewStudent(student: Student){
        if(!self._students.contains(student))
        {
            self._students.append(student)
            print("You added a \(student.name) sucessfully")
        }
        else{
            print("\(student.name) is already in the system")         
        }
    }

    func removeStudent(student: Student){
        if(self._students.contains(student))
        {
            if let index = self._students.firstIndex(of: student){
                self._students.remove(at: index)
                print("\(student.name) removed sucessfully")
            }
        }
        else{
            print("You didn't add \(student.name) before")            
        }
    }
    // Mange Courses (Admin operation)
    func addNewCourse(course: Course){
        if(!self._courses.contains(course))
        {
            self._courses.append(course)
            print("You added a \(course.title) sucessfully")
        }
        else{
            print("\(course.title) is already in the system")         
        }
    }

    func removeCourse(course: Course){
        if(self._courses.contains(course))
        {
            if let index = self._courses.firstIndex(of: course){
                self._courses.remove(at: index)
                print("\(course.title) removed sucessfully")
            }
        }
        else{
            print("You didn't add \(course.title) before")
            
        }
    }

    func getProfessorById(id: Int) -> Professor? {
        return self._professors.first(where: { $0.id == id })
    }
    func getStudentById(id: Int) -> Student? {
        return self._students.first(where: { $0.id == id })
    }
    func getCourseById(id: Int) -> Course? {
        return self._courses.first(where: { $0.courseId == id })
    }

    func reportUniversityStatus() {
        print("University Status Report:")
        print("Total Professors: \(self._professors.count)")
        print("Total Students: \(self._students.count)")
        print("Total Courses: \(self._courses.count)")
    }
}