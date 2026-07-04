class Person: Identifiable, Trackable , Equatable {
    private static var nextID = 0
    private(set) var id: Int
    private var _name: String
    private var _location: String

    var name: String {
        get { _name }
        set { _name = newValue }
    }

    var location: String {
        get { _location }
        set { _location = newValue }
    }

    init(name: String, location: String) {
        Person.nextID += 1
        self.id = Person.nextID
        self._name = name
        self._location = location
    }

    func getId() -> Int {
        return self.id
    }
   
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.id == rhs.id
    }

}
