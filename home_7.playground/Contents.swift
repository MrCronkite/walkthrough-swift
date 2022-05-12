import Foundation

/*:
 ## Задание 1
 1.1 Создайте перечисление `CalculationType`, содержащее четыре математических действия — *сложение*, *вычитание*, *умножение* и *деление* (если не знаете английские наименования — [translate.google.com](http://translate.google.com))
 1.2 Напишите функцию возвращающую `Int` и принимающую в качестве аргументов три переменные: число один, число два и тип математической операции. Внутри функции, в зависимости от значения переменной типа `CalculationType` выполните соответствующую математическую операцию с константами и верните результат. Для перебора всех возможных результатов используйте конструкцию `switch`. Присвойте своей функции такое название, что бы из него было понятно для чего служит эта функция, но при этом сделайте это имя максимально лаконичным.
 1.3 Вызовите эту функцию четыре раза для каждого математического оператора в отдельности. Постарайтесь сделать реализацию максимально гибкой — такой, что бы результат вывода можно было легко изменить, поменяв значения переменных. Доработайте функцию так, что бы при каждом её вызове на консоль выводился результат следующего содержания: «Результат сложения (вычитания, деления, умножения) <…> и <…> равен <…>» для каждого отдельного случая.

 ## Задание 2
 2.1 Создайте перечисление `CurrencyUnit` со следующими членами: `rouble`, `dollar`, `euro`. Данные члены перечисления имеют тип связанных значений следующего вида: `([String], String)`, где массив должен содержать перечень тех стран, в которых используется валюта, а тип стринг - сокращенное наименование валюты.
 2.2 Создайте переменную `roubleCurrency` и присвойте ей соответствующие значения
 2.3 Внутри перечисления `CurrencyUnit` создайте еще одно перечисление `DollarCountrys`, в котором содержиться перчень стран, национальной валютой которых является доллар (USA, Canada, Australia)
 2.4 Расширьте тип связанных значений (ассоциированный параметр) для члена `dollar`, который будет сообщать о том, валютой какой страны является данный доллар
 2.5 Создайте переменную `someCurrency` и присвойете ей значения относящиеся к доллару
 2.6 Используя ветвление `switch` выведите на коносль сообщение в котором описано что за валюта, в каких странах катируется, короткое наименование.
 
 ## Задание 3
 3.1 Создайте структуру `Car` со следующими элементами:
 - `name: String`
 - `porductionYear: Int`
 - `horsePower: Int`
 3.2 Создайте экземпляр структуры `Car` с названием какого либо автомобильного бренда, например `honda`.
 3.3 Создайте копию экземпляра `honda`, например, `hondaCivic`
 3.4 Присвойте новое значение переменной name структуры `hondaCivic`
 3.5 Создайте цикл с пятью итерациями, в котором в каждой итерации необходимо увеличивать значение horsePower у структуры hondaCivic на единицу
 3.6 Выведите значения структур `honda` и `hondaCivic` на консоль в следующем виде: "Мощность двигателя <..> составляет <...> л.с."

 ## Задание 4
 4.1 Создайте структуру `PlayerInChess`, в которой есть два свойства: `name` с типом `Sting` и `wins` с типом `Int`
 4.2 Создайте экзмепляр струкутуры и инициализируйте её свойства
 4.3 Расширьте структуру PlayerInChess методом description, который должен выводить на консоль имя игрока и количество его побед
 4.4 Вызвите данный метод из экземпляра структуры
 4.5 Расширте структуру методом addWins, который должен принимать целочисленное значение и увеличивать количество побед на это значение.
 4.6 Вызовите метода addWins из экземпляра структуры, затем вызовите метод description
*/






//задание 1

enum calculationType: String{
    case addition = "+"
    case substraction
    case multiolication
    case division
}

var calculate = calculationType.addition

func calculateNumber(_ numberOne: Int, _ numberTwo: Int, _ calcType: calculationType) -> Float{
switch calcType{
case .addition:
    return Float(numberOne + numberTwo)
case .substraction:
    return Float(numberOne - numberTwo)
case .multiolication:
    return Float(numberOne * numberTwo)
case .division:
    return Float(numberOne / numberTwo)
}
}


calculateNumber(6, 3, .multiolication)


print(calculationType.addition.rawValue)


//задание 2

enum CurrencyUnit{
    
    enum DollarCountrys: String{
        case usa = "США"
        case canada = "Канада"
        case australia = "Aвстралия"
    }
    
    case rouble(countries: [String], shortName:String)
    case dollar(countries: [String], shortName:String, national: DollarCountrys)
    case euro(countries: [String], shortName:String)
}

var roubleCurrency = CurrencyUnit.rouble(countries: ["Россия", "Беларусь"], shortName: "RUB")

var dollarCurrency = CurrencyUnit.dollar(countries: ["CША", "Канада"], shortName: "USA", national: .usa)

switch dollarCurrency {
case let .dollar(countries, shortName, national):
    print("\(countries.joined(separator: ", ")), кратка форма записи \(shortName) национальность \(national.rawValue)")
case let .rouble(countries, shortName):
    print("\(countries.joined(separator: ", ")), кратка форма записи \(shortName)")
case let .euro(countries, shortName):
    print("\(countries.joined(separator: ", ")), кратка форма записи \(shortName)")
}


//задание 3

struct Car {
    var name: String
    var productionYear: Int
    var horsePower: Int

}

var honda = Car(name: "Honda", productionYear: 2001, horsePower: 100)

var hondaCivic = honda
hondaCivic.name = "Honda Civic"

for _ in 1...5{
    hondaCivic.horsePower += 1
}

print("Мощность двигателя \(honda.name) составляет \(honda.horsePower) л.с.")
print("Мощность двигателя \(hondaCivic.name) составляет \(hondaCivic.horsePower) л.с.")


//задание 4

struct PlayerInChess{
    let name: String
    var wins: Int
    
    func description(){
        print("Имя игрока \(self.name), количество побед \(self.wins)")
    }
    mutating func addWins(_ addition: Int){
        self.wins += addition
    }
}

var playerInChess = PlayerInChess(name: "Влад", wins: 12)
playerInChess.description()
playerInChess.addWins(2)
playerInChess.description()


