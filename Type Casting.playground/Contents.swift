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



func arrayAnimal() -> [Animal] {
    var pets: [Animal] = []
    
    let countDogs = Int.random(in: 0...10)
    let countBird = Int.random(in: 0...10)
    let countCats = Int.random(in: 0...10)
    
    for _ in 1...countDogs {
        let dog = Dog(name: "Bob")
        pets.append(dog)
    }
    
    for _ in 1...countBird {
        let bird = Bird(name: "Murzik")
        pets.append(bird)
    }
    
    for _ in 1...countCats {
        let cat = Cat(name: "Kirik")
        pets.append(cat)
    }
    
    return pets
}

let pets = arrayAnimal()

var dogCount = 0
var catCount = 0
var birdCount = 0

for pet in pets {
    if pet is Dog {
        dogCount += 1
    }else if pet is Cat {
        catCount += 1
    }else if pet is Bird {
        birdCount += 1
    }
}

print("dogs = \(dogCount), cats = \(catCount), birds = \(birdCount)")

func walkDog(dog: Dog) {
    print("dogs \(dog.name)")
}

func walkCats(cats: Cat){
    print("cats \(cats.name)")
}

func flightBirds(birds: Bird){
    print("birds \(birds.name)")
}

for pet in pets {
    if let dog = pet as? Dog{
        walkDog(dog: dog)
    }else if let cat = pet as? Cat{
        walkCats(cats: cat)
    }else if let bird = pet as? Bird{
        flightBirds(birds: bird)
    }
}


// опциональные цепочки

class Address {
    var street = "Deribasovskay"
    var number = "1"
    var city = "Odessa"
    var country = "Ukraine"
}

struct Garage {
    var size = 2
}

class House {
    var rooms = 1
    var address = Address()
    var garage: Garage? = Garage()
}

class Car {
    var model = "Zaporojec"
    
    func start() {
    }
}

class Person {
    var cars: [Car]? = [Car()]
    var house: House? = House()
}

let p = Person()

//p.cars![0]
//p.house!

//p.house!.garage!.size

print(p.house?.garage?.size )
