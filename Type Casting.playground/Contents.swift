import Foundation


//Контроль типов

class Animal {
    var name = ""
    var description: String {
        return "Animal"
    }
    
    init() {}
    
    init(name: String) {
        self.name = name
    }
}


class Dog: Animal {
    override var description: String {
        return "Dog"
    }
}

class Cat: Animal {
    override var description: String {
        return "Cat"
    }
}

class Bird: Animal {
    override var description: String {
        return "Bird"
    }
}

let dog = Dog()
let cat = Cat()
let bird = Bird()

func getAnimal(_ animal: Animal) -> Animal{
    return animal
}

let pet = getAnimal(bird)

if pet is Dog{
    print("Dog")
} else if pet is Cat {
    print("Cat")
} else if pet is Bird {
    print("Bird")
} else {
  print("another animal")
}
