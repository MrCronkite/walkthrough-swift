import Foundation

protocol Priority {
    var order: Int { get }
}


protocol EntryName: Priority {
    var  label: String { get }
}

class Student: EntryName {
    
    var firstName: String
    var lastName: String
    
    var fullName: String {
        return firstName + " " + lastName
    }
    
    var label: String {
        return fullName
    }
    
    init (firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    let order = 1
}


class Cow: EntryName {
    var name: String?
    
    var label: String {
        return name ?? "a cow"
    }
    
    let order = 2
}

struct Grass: EntryName {
    var type: String
    
    var label: String{
        return type
    }
    
    let order = 3
}

let student1 = Student(firstName: "Bob", lastName: "Lick")
let student2 = Student(firstName: "Volk", lastName: "Meat")
let student3 = Student(firstName: "Jo", lastName: "Kil")

let cow1 = Cow()
cow1.name = "Marusia"
let cow2 = Cow()

let grass1 = Grass(type: "Bermuda")
let grass2 = Grass(type: "St. Augustine")

var array: [EntryName] = [cow1, student1, grass1, cow2, student3, grass2, student2]


func printName( array: [EntryName]){
    
    array.sorted(by: {a, b in
        if a.order == b.order {
            return a.label < b.label
        }else {
            return a.order < b.order
        }
    })
    
    for value in array {
        print(value.label)
    }
}

printName(array: array)


// Делегирование

protocol ButtonDelegate {
    func userTappedButton(_ button: Button)
    
}

class Button {
    let tittle: String
    var delegate: ButtonDelegate?
    
    init(tittle: String) {
        self.tittle = tittle
    }
    
    func taped() {
        delegate?.userTappedButton(self)
    }
}

class GameController: ButtonDelegate {
    func userTappedButton(_ button: Button) {
        print("user pressed \(button.tittle)")
    }
}

let button = Button(tittle: "enter")
let gameController = GameController()

button.delegate = gameController
button.taped()


func delay(a: Int, b: Int) throws -> Int {
    guard b != 0 else { throw NSError(domain: "на ноль делить нельзя", code: 2)}
    return a / b
}

do {
    try delay(a: 4, b: 0)
} catch {
    print(error.localizedDescription)
}

