import UIKit


class Post {
    var name = "vlad"
    var age = "34"
    var surname = "shimchenko"
    
    private var numberOfcomments = 0
    
    func addComment(){
        numberOfcomments+=2
    }
    
    func description() -> Int{
        return numberOfcomments
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

print(secondPost.description())



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


//наследование


class Parent {
    var nameMather = ""
    var nameFather = ""
    private var ageMather = 45
    
    init(){}
    
    init(nameMather: String, nameFather: String ){
        self.nameFather = nameFather
        self.nameMather = nameMather
    }
    
    func description()->Int{
        return ageMather
    }
}


let family = Parent(nameMather: "tania", nameFather: "sasha")

family.nameMather

class Child :Parent{
    var ageChild = 0
    
    func age(){
        ageChild = self.description() - 30
    }
}

let baby = Child()

baby.age()
print(baby.ageChild)



//полиморфизм

class Figure {
    func draw(){}
}

class Circle: Figure{
    override func draw() {
         print("Draw Circle")
    }
}

let circle = Circle()

func drawFigure(_ figure: Figure){
    figure.draw()
}

drawFigure(circle)

    



        



