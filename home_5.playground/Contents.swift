import UIKit
import Foundation


/*:
 ### Задание 1
 Создайте словарь, который содержит результаты игр спортивной команды в чемпионате (например по хоккею). Ключом словаря должно быть название команды соперника, а в качестве значения должен быть массив с результатами игр с этим соперником. Необходимо вывести на консоль результаты игр. Выглядить это должно примерно следующим образом:
 - Игра с Салават Юлаев - 3:6
 - Игра с Салават Юлаев - 5:5
 - Игра с Авангард - 2:1
 - Игра с Авангард - 2:3
 - Игра с АкБарс - 3:3
 - Игра с АкБарс - 1:2
 */
/*:
 ### Задание 2
Создайте функцию которая принимает в качестве аргументов день, месяц и год вашего рождения и делает расчет полных прожитых вами дней, месяцев и лет с момента вашего рождения. При вызове функции на консоль должно выходить то же самое сообщение, что и в предыдущих заданиях
 */
/*:
 ### Задание 3
 3.1 Создайте функцию, которая считает общую сумму денег, хранящихся в кошельке. В кошельке имеются купюры различного достоинства от 50 до 5000 рублей
 3.2 Заполните массив различными купюрами и подсчитайте общую сумму
 */
/*:
 ### Задание 4
 4.1 Создайте функцию, которая определяет является ли число четным или нет. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`. Подумайте над названием функции, оно должно быть ёмким и в то же время не очень длинным
 4.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение. Так же подумайте над названием функции
 4.3 Создайте функцию, которая создает возрастающий массив чисел в интервале от *x* до *y*. Данный интервал должен определять пользователь при вызове функции. Если хотите усложить задание, то пусть данная функция создает массив случайных чисел в заданном интервале с уникальными значениями
 4.4 Создайте массив чисел от *1* до *100*, используя для этого вышесозданную функцию
 
 > Данное задание выходи за рамки пройденного материала
 4.5 Удалите из этого массива сначала все четные числа, а затем и числа, которые делятся на *3*, используя для этого функции из задания **4.1** и **4.2**. Есть несоколько вариантов решения, в том числе с использованием функии `filter()`
 4.6 Создайте отдельные функции для удаления всех четных чисел из массива и чисел, которые делятся на *3*. Для определения четного числа и числа которое делится на *3* используейте ранее созданные функции
*/



// #задание 1

var dictionary:[String: [String]] = [:]

dictionary["Салват Юлаев"] = ["3:6", "5.5"]
dictionary["Авангард"] = ["2:1", "2.3"]
dictionary["АкБарс"] = ["3:3", "1.2"]

for element in dictionary{
    print("\(element.key) \(element.value.first!)")
    print("\(element.key) \(element.value.last!)")
    
}

// #задание 2

func calcTime(year :Int , mouth :Int ) -> Int{
    let dayOfYear = (2022 - year) * 365
    let dayOfMouth = mouth * 29
    

    return dayOfYear + dayOfMouth
}

print(calcTime(year: 1999, mouth: 3))

var kup = [500, 50, 500, 1000, 500, 50, 100, 2000]

func sumCash(a :[Int]) -> Int{
    var d = 0
    
    for i in a {
        d += i
    }
    return d
}

print(sumCash(a: kup))


func evenNumber(a :Int) -> Bool{
    return a%2 == 0 ? true : false
}

print(evenNumber(a: 48))

func arreyNumbers(a :Int, b :Int) ->[Int]{
    var arrey :[Int] = []
    for _ in a...b {
        arrey += [Int.random(in: a...b)]
    }
    return arrey
}


var massivX = arreyNumbers(a: 1, b: 100)

print(massivX)

func evenRemove(a :[Int]) ->[Int]{
    var newArrey :[Int] = []
    for i in a {
        if i % 2 != 0{
            newArrey += [i]
        }
    }
    
    return newArrey
}

print(evenRemove(a: massivX))



func evereonman(awer: Bool) -> (Int) -> Int {
    
    func evrithing(i :Int) -> Int{
        return  i-2
    }
    
    func evrithing2(i :Int) -> Int{
        return i*2
    }

    return awer ? evrithing : evrithing2
    
}

var rec = 12
var result12 = evereonman(awer: rec>0)

while rec != 0 {
    print(rec)
    rec = result12(rec)
}



func filterLesThanValue(value: Int, numbers: [Int]) -> [Int]{
    var newArrey = [Int]()
    
    for number in numbers {
        if number < value{
            newArrey.append(number)
        }
    }
    
    return newArrey
}

let someValue = 5
let arrayOfNumbers = [5, 6, 2, 3, 1, 8, 46, 7]




print(filterLesThanValue(value: 5, numbers: arrayOfNumbers))

var name = [6, 5, 12, 9, 2]

func sortName(str1 :String, str2 :String)->Bool{ return str1 > str2}

var newArreyName = name.sorted { $0>$1 }

print(newArreyName)


