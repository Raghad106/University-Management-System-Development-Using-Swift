class Course: Equatable {
    private var _courseId: Int
    private var _title: String
    private var _credits: Int
    private var _professor: Professor
    private var _enrollments: [Enrollment]
    private var _assignments: [Assignment]

    var courseId: Int { 
        get { _courseId }
        set { _courseId = newValue }
    }
    var title: String {
        get { _title }
        set { _title = newValue }
    }
    var credits: Int {
        get { _credits }
        set { _credits = newValue }
    }
    var enrollments: [Enrollment] {
        get { _enrollments }
    }
    var assignments: [Assignment] {
        get { _assignments }
    }
    var professor: Professor {
        get { _professor }
        set { _professor = newValue }
    }
    init(courseId: Int, title: String, credits: Int, professor: Professor) {
        self._courseId = courseId
        self._title = title
        self._credits = credits
        self._professor = professor
        self._enrollments = []
        self._assignments = []
    }

    // enrollToTheCourse and dropTheCourse are student operations
    func enrollToTheCourse(enrollment: Enrollment){
        if(!self._enrollments.contains(enrollment))
        {
            self._enrollments.append(enrollment)
            print("You enrolled sucessfully to \(self._title)")
        }
        else{
            print("You are already enrolled in \(self._title)")
            
        }
    }

    func dropTheCourse(enrollment: Enrollment){
        if(self._enrollments.contains(enrollment))
        {
            // To detect the index and remove the enrollment according it
            if let index = self._enrollments.firstIndex(of: enrollment){
                self._enrollments.remove(at: index)
                print("You Dtop the \(self._title) sucessfully")
            }
        }
        else{
            print("You didn't enroll to \(self._title) before")
            
        }
    }

    // addAssignmet, and removeAssinmet are professor operatopns 
    func addAssignment(assignment: Assignment){
        if(!self._assignments.contains(assignment))
        {
            self._assignments.append(assignment)
            print("Assigment added sucessfully to \(self._title)")
        }
        else{
            print("This assigment is already exsit in \(self._title)")
            
        }
    }
    func removeAssignment(assignment: Assignment){
        if(self._assignments.contains(assignment))
        {
            if let index = self._assignments.firstIndex(of: assignment){
                self._assignments.remove(at: index)
                print("You removed the \(assignment.title) sucessfully from \(self._title)")
            }
        }
        else{
            print("This assignment isn't exsit in \(self._title) before")
            
        }
    }
    static func == (lhs: Course, rhs: Course) -> Bool {
    return lhs._courseId == rhs._courseId
    }
}