import UIKit
import Foundation

/*:
 ## Задание 1
 1.1 Создайте новый класс `Orange` со следующими свойствами:
 - `color: String`
 - `taste: String`
 - `radius: Double`
 На ваше усмотрение можете создать или не создавать инициализатор
 */
//: 1.2 Создайте экземпляр класса `Orange` с именем `someOrange`
/*:
 1.3 Проинициализируйте все переменные объекта someOrange следующими значениями:
 - `color` — *Orange*
 - `taste` — *Sweet*
 - `radius` — *95*
*/
//: 1.4 Выведите на консоль сообщение «Orange has <...> color and <...> taste». Обращайтесь к этим значениям напрямую через экземпляр класса, не создавая для них отдельных переменных
//: 1.5 Создайте новую константу `orangeVolume` и присвойте ей значение объема апельсина (Число Пи в Swift можно получить через константу `Double.pi`. Формулу расчета можно погуглить). Выведите значение `orangeVolume` на консоль
/*:
1.6 Дополните класс `Orange` новым свойством `orangeVolume`
1.7 Создайте в классе `Orange` новый метод `calculateOrangeVolume` и перенесите в него расчет объема апельсина
1.8 Вызовите метод calculateOrangeVolume
 */
/*:
 ## Задание 2
 2.1 Создайте класс `Figure` (родительский класс) со следующими свойствами:
 - `height: Float`
 - `width: Float`
 - `radius: Float`
 - `square: Float`
 - `perimeter: Float`
 Oбъявите в классе виртуальные методы (это такие методы, которые нужно будет переопределить) `squareOfFigure` и `perimeterOfFigure` для расчетов площади и периметра (длины) фигуры соответственно. Методы должены возвращать `Float`. Создайте инициализатор для сторон прямоугольника и отдельный инициализатор для радиуса.
 */
/*:
 2.2. Создайте классы `Circle`, `Rectangle` и `Ellipse`, унаследовав их от `Figure`. Переопределите методы `squareOfFigure` и `perimeterOfFigure` для каждого класса в соответствии с правилом расчета площади или периметра (длины) конкретной фигуры
 2.3 В каждом классе создайте метод `description`, который выводит на консоль сообщение следующего вида: «Площадь фигуры <тип фигуры> равна <... >, периметр (длина) равна <...>»
 */
//: 2.4 Создайте по экземпляру каждого класса, кроме `Figure`, проинициализируйте свойства `height` и `width` или `radius` для каждого класса в любые значения и вызовите у каждого экземпляра класса метод `description`
/*:
 ## Задание 3
 3.1 Создайте класс `Employee` (сотрудник) со следующими свойствами:
 - `salary`
 - `name`
 - `surname`
 */
//: 3.2 Создайте массив из 5 объектов под названием `names` со следующими элементами: *John*, *Aaron*, *Tim*, *Ted*, *Steven*. И еще один массив `surnames` с элементами: *Smith*, *Dow*, *Isaacson*, *Pennyworth*, *Jankins*
//: 3.3 Объявите массив `employees` и создайте цикл, в котором он заполняется десятью объектами класса `Employee` таким образом, что свойства `name` и `surname` инициализируются случайными именами и фамилиями из массивов `names` и `surnames`, соответственно. Свойство `salary` (зарплата) тоже должно генерироваться в случайном диапазоне от *$1000* до *$2000*
//: 3.4 Пройдитесь по массиву `employees` при помощи `for-in` и выведите информацию по каждому объекту в виде: «<имя> <фимилия>’s salary is $<... >»
//: 3.5 Создайте отдельный массив на основании `employees`, который включает только тех работников, зарплата которых чётная. Выведите информацию по каждому сотруднику с четной зарплатой, как в пункте 3.4




//задание 1
        
class Orange{
    var color: String
    var taste: String
    var radius: Double
    var orangeVolume: Double = 0
    
    
    func calculateOrangeVolume(){
        orangeVolume = pow(self.radius, 3)*4*Double.pi/3
    }

    
    init(_ color: String, _ taste: String, _ radius: Double){
        self.radius = radius
        self.color = color
        self.taste = taste
    }
    
}

let someOrange = Orange("red", "sweet", 34)

someOrange.calculateOrangeVolume()

someOrange.orangeVolume

print("\(someOrange.taste) так так так \(someOrange.color) так так так \(someOrange.radius)")


//задание 2

class Figure{
    var height: Float = 0
    var weight: Float = 0
    var square: Float = 0
    var perimeter: Float = 0
    func squareOfFigure(){}
    func perimetrOfFigure(){}
}


class Circle: Figure{
    
    var radius: Float = 0
    
    override init() {}
    init(radius: Float) {
        self.radius = radius
    }
    
    internal override func squareOfFigure() {
        self.square = Float.pi*pow(self.radius, 2)
    }
    internal override func perimetrOfFigure() {
        self.perimeter = 2*self.radius*Float.pi
    }
    
    func description(){
        self.perimetrOfFigure()
        self.squareOfFigure()
        print("Площадь круга = \(cirlce.square) Периметр круга =  \(cirlce.perimeter)")
    }
}

class Rectangle: Figure{
    
    override init(){}
    init(height: Float, weight: Float){
        super.init()
        self.height = height
        self.weight = weight
    }
    
    internal override func squareOfFigure() {
        self.square = self.weight * self.height
    }
    internal override func perimetrOfFigure() {
        self.perimeter = 2*(self.weight+self.height)
    }
    
    func description(){
        self.perimetrOfFigure()
        self.squareOfFigure()
        print("Периметр прямоугольника \(self.perimeter) Площадь прямоугольника \(self.square)")
    }
}



class Ellipse: Figure{
    
    override init(){}
    init(height: Float, weight: Float){
        super.init()
        self.height = height
        self.weight = weight
    }
    
    internal override func squareOfFigure() {
        self.square = Float.pi*self.weight * self.height/4
    }
    internal override func perimetrOfFigure() {
        self.perimeter = 2*Float.pi*sqrt((pow(self.weight, 2) + pow(self.height, 2))/8)
    }
    
    func description(){
        self.perimetrOfFigure()
        self.squareOfFigure()
        print("Периметр эллипса \(self.perimeter) Площадь эллипса \(self.square)")
    }
}


var a = pow(4,2)


let cirlce = Circle(radius: 13.4)
let rectangle = Rectangle(height: 12.2, weight: 3.2)
let ellipse = Ellipse(height: 4.2, weight: 6.2)
ellipse.description()
cirlce.description()
rectangle.description()


// задание3


class Employee{
    var salary = 0
    var name = ""
    var surname = ""
    
    init(){}
    
    init(name: String, surname: String, salary: Int){
        self.name = name
        self.surname = surname
        self.salary = salary
    }
}

var names: [String]
var surnames: [String]

names = ["John", "Aaron", "Tim", "Ted", "Steven"]
surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]

var employees: [Employee] = []


for _ in 1...10 {
    let salary = Int.random(in: 1000...2000)
      
      if !names.isEmpty && !surnames.isEmpty {
          
          let employee = Employee(name: names.randomElement()!,
                                  surname: surnames.randomElement()!,
                                  salary: salary)
          
          employees.append(employee)
      }
    
}

for employee in employees {
    print("\(employee.name) \(employee.surname)’s salary is $\(employee.salary)")
}












