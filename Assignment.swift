import Foundation

class Assignment: Identifiable, Equatable{
    private static var counter: Int = 0
    private(set) var id: Int
    private var _title: String
    private var _dueDate: Date
    private var _submissions: [Submission]

    var assignmentId: Int{ get { id }}
    var title: String{
        get { _title }
        set { _title = newValue}
    }
    var dueDate: Date{
        get { _dueDate }
        set { _dueDate = newValue}
    }
    var submissions: [Submission]{
        get { _submissions }
        set { _submissions = newValue}
    }
    init(title: String, dueDate: Date) {
        Assignment.counter += 1
        self.id = Assignment.counter
        self._title = title
        self._dueDate = dueDate
        self._submissions = []
    }
    static func == (lhs: Assignment, rhs: Assignment) -> Bool {
        return lhs.id == rhs.id
    }

    // To apply Compostion relationship between Assignment and Submission
    func submitTheAssignment(fileName: String, submittedAt: Date, student: Student) {
        // Check due date
        guard submittedAt <= self._dueDate else {
            print("Submission rejected — due date has passed")
            return
        }

        // Check student didn't already submit
        guard !self._submissions.contains(where: { $0.student.id == student.id }) else {
            print("\(student.name) already submitted this assignment before")
            return
        }

        let submission = Submission(fileName: fileName, submittedAt: submittedAt, student: student)
        self._submissions.append(submission)
        print("You submitted successfully to \(self._title)")
    }

    func unsendTheAnswers(submission: Submission) {
        if let index = self._submissions.firstIndex(of: submission) {
            self._submissions.remove(at: index)
            print("You unsent the answers successfully")
        } else {
            print("You didn't submit before")
        }
    }
}

class Submission: Identifiable, Equatable{
    private static var counter: Int = 0
    private(set) var id: Int
    private var _fileName: String
    private var _submittedAt: Date
    private var _student: Student

    var submissionId: Int{ get { id }}
    
    var fileName: String {
        get { _fileName }
        set { _fileName = newValue }
    }
    var submittedAt: Date {
        get { _submittedAt }
        set { _submittedAt = newValue }
    }
    var student: Student{
        get { _student }
        set { _student = newValue }
    }

    private init(fileName: String, submittedAt: Date, student: Student) {
        Submission.counter += 1
        self.id = Submission.counter
        self._fileName = fileName
        self._submittedAt = submittedAt
        self._student = student
    }
    static func == (lhs: Submission, rhs: Submission) -> Bool {
    return lhs.id == rhs.id
    }
}