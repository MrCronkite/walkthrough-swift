import UIKit


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



var stats = (a: 23, b: 12, c: 67)

print("я могу отжаться \(stats.a) раза, подтянуться \(stats.b) раз, присесть \(stats.c) раз")

print("я могу отжаться \(stats.1) раза, подтянуться \(stats.0) раз, присесть \(stats.2 ) раз")

var setings = (d: 54, h: 7, k: 43)

stats.a = setings.d

print("я могу отжаться \(stats.1) раза, подтянуться \(stats.0) раз, присесть \(stats.2 ) раз")


var apples: Int? = 5

if apples == nil {
    print("nil apples")
}else{
    print(apples)
}


if var numb = apples{
    numb+=2
    print(numb)
}


var number_: Int! = nil

number_ = 4

if let g = number_{
    print(g+2)
    }


let numb1 = "asdasd"
let numb2 = "sdwdas12"
let numb3 = "44"
let numb4 = "76"
let numb5 = "12"

if Int(numb1) != nil{
   print(numb1)
}

if Int(numb2) != nil{
    print(numb2)
}

if let numb3_3 = Int(numb3){
    print(numb3_3)
}

let numb4_4 = Int(numb4)
    print(numb4_4)


let numb5_5 = Int(numb5)
print(numb5_5)

var result12 = numb5_5! + numb4_4!

print(result12)




 
var greeting = "Hello, playground"
