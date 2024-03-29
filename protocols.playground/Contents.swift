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


//наследование

protocol MyCount {
    var count: Int { get }
}

protocol SecondCound {
    var number: Int { get }
}

protocol Chaldren: SecondCound, MyCount {}

func powNumber(_ value: MyCount) -> Int {
    return value.count * value.count
}

class FirstNumber: MyCount {
    var count: Int = 5
}

struct TwoNumber: MyCount {
    var count: Int = 6
    var name = "Dart wider"
}

//Подписываемся на соблюдение нескольких протоколов
class classForMultipleInheritance: SecondCound, MyCount {
    var number: Int = 2
    var count: Int = 2
}

//Подписываемся на протокол, который наследует другие протоколы
class classForInheritingMultipleProtocol : Chaldren {
    var number: Int = 2
    var count: Int = 2
}

class ChaildClass: classForInheritingMultipleProtocol {}

print( powNumber( ChaildClass() ))

var myArrey: [MyCount] = []

myArrey.append(FirstNumber() )
myArrey.append(TwoNumber() )

for i in myArrey {
    print(i.count)
}

print(powNumber(FirstNumber()  ))
print(powNumber(TwoNumber()   ))


//расширения в протоколах

protocol Example1 {
    var number1: Int {get}
}

protocol Example2 {
    var number2: Int {get set}
}

protocol MainProtocol: Example1, Example2 {}

class ClassExample: MainProtocol {
    var number1: Int = 2
    
    var number2: Int = 6

}

struct StructExample: MainProtocol {
    var number1: Int = 5
    
    var number2: Int = 8
    
}

var class1 = ClassExample()
var struct1 = StructExample()

extension Example1 {
    func method() {
        print("hello extension exaple1")
    }
}

extension Example2 {
    mutating func methodMutating(value: Int) {
        self.number2 = value
    }
}

extension MainProtocol {
    func sumProperties() -> Int {
        return self.number2 + self.number1
    }
}

class1.method()
struct1.method()
class1.methodMutating(value: 5)
struct1.methodMutating(value: 9)
struct1.sumProperties()
class1.sumProperties()
