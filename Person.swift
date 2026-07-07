class Person: Identifiable, Equatable {
    private static var nextID = 0
    private(set) var id: Int
    private var _name: String

    var name: String {
        get { _name }
        set { _name = newValue }
    }

   

    init(name: String,) {
        Person.nextID += 1
        self.id = Person.nextID
        self._name = name
    }

    func getId() -> Int {
        return self.id
    }
   
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.id == rhs.id
    }

}
