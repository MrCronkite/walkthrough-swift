import UIKit


class Post {
    var name = "vlad"
    var age = "34"
    var surname = "shimchenko"
    
    var numberOfcomments = 0
    
    func addComment(){
        numberOfcomments+=2
    }
}


let firstPost = Post()

print(Post().name)
print(firstPost.age)
print(Post().surname)

let secondPost = firstPost

secondPost.surname = "kotov"

print(secondPost.surname)

print(firstPost.surname)

firstPost === secondPost

secondPost.addComment()

print(secondPost.numberOfcomments)


//инициализация

class Human {
    var name = ""
    var age = 0
    
    init() {}
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
}

let person = Human(name: "vladik", age: 45)

person.age
person.name
        



