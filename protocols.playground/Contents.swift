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


//for value in array {
//
//    switch value{
//    case let grass as Grass: print(grass.type)
//    case let cow as Cow: print(cow.name ?? "a cow")
//    case let student as Student: print(student.fullName)
//    default: break
//    }
//}

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
