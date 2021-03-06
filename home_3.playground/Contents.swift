import UIKit

//: ## Home work 3

/*:
 ### Задание 1
 1.1 Представьте, что вы владелец розничного магазина и вам необходимо закупить товар, стоимость которого варьируется от его количества. Если количество закупаемого товара меньше 10 позиций, то цена равна 1000 рублей за штуку. От 10 до 20 единиц товара будет стоить вам 800 рублей за штуку. И вы заплатите 600 рублей за единцу при единовременно покупке от 20 единиц. Создайте условие для расчета цены за еденицу товара в зависмости от его количества и подсичитайте общую сумму используя конструкцию `if-else`. Постарайтесь написать короткое и читаемое решение
 
 ## Упражнение - опциональные значения
  
  >Во время выполнения упражнений данного плейграунда, вы будете выводить в консоль опциональные значения.  Компилятор Swift выдаст предупреждение: «Expression implicitly coerced from `Int?` to Any».  Для целей выполнения заданий, можете данные предупреждения игнорировать.
  Ваше приложение запрашивает пользователя его возраст.  Введённые пользователем данные передаются вам в виде текста, `String`.  Однако, вам нужно сохранить значение в виде целого числа `Int`.  Пользователь может сделать ошибку и ввести неверные данные.
  Объявите константу `userInputAge` типа `String` и присвойте ей значение "34e" для моделирования опечатки.  Затем определите константу `userAge` типа `Int` и используйте конструктор `Int` для преобразования `userInputAge`.  Какую ошибку вы получаете?
  Теперь поменяйте тип `userAge` на `Int?`, и напечатайте значение `userAge`.  Почему значение `userAge` равно `nil`?  Ответьте в комментарии или внутри команды print.
  Теперь исправьте опечатку в значении `userInputAge`.  Что-нибудь в результатах вывода кажется вам неуместным?
     Напечатайте `userAge` снова, но теперь извлеките `userAge` с помощью оператора «!».
  Используйте привязку опционалов для извлечения `userAge`.  Если `userAge` содержит значение, выведите его в консоль.
  Теперь снова эмулируйте опечатку и попробуйте вывести на консоль целочисленное значение переменной `userInputAge`, при помощи оператора "!". Какую ошибку вы получите? Почему?
 
 ### Задание 3
  3.1 Доработать свое собственное решение первой половны второго задания прошлого урока с использованием оператора ветвления if-else.
  3.2 Вторую половину этого же задания необходимо выполнить, используя switch.
 
 ### Задание 4
 4.1 Как вы знаете, после выполнения кода, расположенного в блоке `case`, происходит завершение работы конструкции `switch-case`. Однако в некоторых случаях требуется не завершать работу конструкции `switch-case`, а перейти к выполнению кода в следующем блоке `case`. Для этого в конце блока `case` указывается ключевое слово `fallthrough`. Представьте, что существует три уровня готовности к чрезвычайным ситуациям: **A**, **B** и **C**. Каждая степень предусматривает выполнение ряда мероприятий, причем каждый последующий уровень включает в себя мероприятия предыдущих уровней. В зависимости от переданного уровня необходимо вывести на консоль все предназначенные для выполнения мероприятия. При этом минимальный уровень готовности — это **C**, максимальный — **A** (включает в себя мероприятия уровней C и B). В случае возникновения ситуации **A** необходимо "Выключить все электрические приборы". **B** - "Закрыть входные двери и окна". **C** - "Соблюдать спокойствие"
 
 ### Задание 5
  5.1 С помощью блоков `case` вы определяете возможные значения, которые может принять выражение. Однако Swift позволяет в пределах одного блока case указать не только на значение рассматриваемого параметра, но и на зависимость от какого-либо условия. Данный функционал реализуется с помощью ключевого слова `where` в блоке `case`. В этом задании вам необходимо отсортировать конфеты **M&M's** по цвету и по начинке. В первую кучку нужно собрать красные конфеты с шоколадом внутри. Во вторую кучку собирите все желтые конфеты с орехами. А втретью кучку коричневые и зеленые с шоколадом внутри. Нужно реализовать только логику для сортировки конфет.
  
 */




//Задание 1

let product = 15;
var price = 0;
var totalSum = 0;

if product<10{
    price = 1000
}else if product<=20{
    price = 800
}else if product>20{
    price = 600
}

totalSum = price*product
print(totalSum)

//Задание 2

var userInputAge = "34e"

//var userAge :Int= Int(userInputAge)

userInputAge = "34"
var userAge = Int(userInputAge)
print(userAge! )

if let userAge = userAge {
    print(userAge)
}

//задание 3

let dayOfBirth = 2
let monthOfBirth = 3
let yearOfBirth = 2018

var currentDay = 4
var currentMonth = 7
var currentYear = 2019

let secondsPerDay = 60 * 60 * 24 //Количество секунд в сутках
let daysPerMonth = 30 //Количество дней в месяце
let monthPerYear = 12 //Количество месяцев в году

var yearsFromBirth = 0 //Количество полных лет
var monthFromBirth = 0 //Количество полных месяцев
var daysFromBirth = 0 //Количество дней с момента рождения
var secondsFromBirth = 0 // Количество секунд

let birthdayIsDone = currentMonth >= monthOfBirth && currentDay >= dayOfBirth

if  birthdayIsDone {
    yearsFromBirth = currentYear - yearOfBirth
    monthFromBirth = (yearsFromBirth * monthPerYear) + (currentMonth - monthOfBirth)
    daysFromBirth = (monthFromBirth * daysPerMonth) + (currentDay - dayOfBirth)
} else {
    yearsFromBirth = currentYear - yearOfBirth - 1
    monthFromBirth = (yearsFromBirth + 1) * monthPerYear + (currentMonth - monthOfBirth)
    daysFromBirth = (monthFromBirth * daysPerMonth) + (currentDay - dayOfBirth)
    
    if currentDay < dayOfBirth {
        monthFromBirth -= 1
    }
}

secondsFromBirth = daysFromBirth * secondsPerDay // Количество секунд

print("\(yearsFromBirth) years, \(monthFromBirth) months, \(daysFromBirth) days and \(secondsFromBirth) seconds have passed since my birth")


switch monthOfBirth {
case 1...3:
    print("I was born in the first quarter")
case 4...6:
    print("I was born in the second quarter")
case 7...9:
    print("I was born in the third quarter")
case 10...12:
    print("I was born in the fourth quarter")
default:
    break
}



//Задание 4

var emergency = "A"

switch emergency{
case "A":
    print("Выключить все электрические приборы")
    fallthrough
case "B":
    print("Закрыть входные двери и окна")
    fallthrough
case "C":
    print("Соблюдать спокойствие")
default:
    break
}

//Задание 5

let color = "Brown" // Цвет конфеты
let filling = "Chocolate" // Начинка конфеты

switch color {
case "Red" where filling == "Chocolate":
    print("Положите эти конфеты в первую кучку")
case "Yellow" where filling == "Nut":
    print("Положите эти конфеты во вторую кучку")
case "Brown" where filling == "Chocolate",
     "Green" where filling == "Chocolate":
    print("Положите эти конфеты в третью кучку")
default:
    break
}
