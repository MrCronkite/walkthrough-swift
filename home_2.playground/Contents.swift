import UIKit


/*:
 ### Задание 1
 1.1 Объявите два свойства с типом `Float` и присвойте каждому число с дробной частью — например, 3.14 или 42.0
 1.2 Объявите еще одно свойство с типом `Double` и присвойте ей сумму двух переменных типа `Float`
 1.3 Выведите результат при помощи `print()`
 */
/*:
 ### Задание 2
 2.1 Создайте переменную `numberOne` и присвойте ей любое целочисленное значение
 2.2 Создайте ещё одну целочисленную переменную `numberTwo` и присвойте ей любое значение меньше `numberOne`
 2.3 Присвойте новой целочисленной константе `result` результат деления `numberOne` на `numberTwo`
 2.4 Присвойте новой целочисленной константе `remainder` остаток от деления `numberOne` на `numberTwo`
 2.5 Выведите на консоль сообщение: «При делении <...> на <...> результат равен <...>, остаток равен <...>», подставив вместо (<...>) свои результаты.
 2.6 Выведите на консоль фразу: «Результат деления <...> на <...> равен <...> <...>/<...>». Поясню: в математике результатом деления 5 на 3 будет натуральная дробь 1 2/3 (одна целая две третьих, здесь мы используем стандартную математическую запись, а не оператор деления). Вам необходимо вывести на консоль именно такой результат от деления `numberOne` на `numberTwo` в виде натуральной дроби — например «Результат деления 7 на 3 равен 2 1/3».
 */
/*:
 ### Задание 3
 3.1 Объявите константу `dayOfBirth` и присвоейте ей дату вашего рождения
 3.2 Объявите константу `mothOfBirth` и присвоейте ей месяц вашего рождения
 3.3 Объявите константу `yearOfBirth` и присвоейте ей год вашего рождения
 3.4 Подсичтайте количество полных лет, полных месяцев, дней и секунд с момента вашего рождения, по текущее время. За текущее время возьмите сегодняшнуюю дату и 0 часов 0 минут. Високосные года можете не учитывать. Пусть среднее количество дней в месяце будет 30. Создайте необходимы для решения данной задачи константы и переменные самостоятельно используя базовые операторы
 3.5 Выведите результат решения на консоль в виде текста (n years, n months, n days and n seconds have passed since my birth). Можете использовать свой текст
 3.6 Выведите на консоль сообщение о том в каком квартале вы родились. Для этого используейте операторы сравнения, что бы сравнить номер месяца вашего рождения с одним из четрырех кварталов. Например если номер месяца больше 0 и меньше или равно 3, то это будет первый квартал. Для получения результата используйте конструкцию if
 */
/*:
 ### Задание 4
 Задание на вашу способность гуглить. Необходимо вычислить синус от числа 1 и округлить результат до тысячных.
 > Подсказка: в результате должно получиться 0.841
 */


//Задание 1
let propertyOne :Float = 3.14
let propertyTwo :Float = 2.18

var sumOfNumber :Double = Double(propertyOne+propertyTwo)

print(sumOfNumber);


//Задание 2

let numberOne = 54
let numberTwo = 33

let result = numberOne/numberTwo
let remainder = numberOne%numberTwo

let numerator = (numberOne - result*numberTwo)/3
let denominator = numberTwo/3

print("При делении \(numberOne) на \(numberTwo) результат равен \(result), остаток равен \(remainder)")
print("Результат деления \(numberOne) на \(numberTwo) равен \(result) \(numerator)/\(denominator)")

//Задание 3

let dayOfBirth = 2
let mothOfBirth = 1
let yearOfBirth = 1999
let todayDay = 18
let todayMoth = 3
let todayYear = 2022
let moutOfYear = 12
let daysOfYear = 365
let hoursInDay = 24
let secInHour = 360
let secondsInMinut = 60

let myAge = todayYear-yearOfBirth
let moutMyAge = myAge*(moutOfYear+todayMoth)
let daysMyAge = myAge*daysOfYear+todayDay
let hoursMyAge = daysMyAge*hoursInDay
let secMyAge = hoursMyAge*secInHour

print("\(myAge) years, \(moutMyAge) months, \(daysMyAge) days and \(secMyAge) seconds have passed since my birth")

if (mothOfBirth>=3)&&(mothOfBirth<=5){
    print("vesna")
}else if(mothOfBirth>=6)&&(mothOfBirth<=8){
    print("leto")
}else if(mothOfBirth>=9)&&(mothOfBirth<=11){
    print("osen")
}else if(mothOfBirth<=2)&&(mothOfBirth<=12){
  print("zima")
}


//Задание 4

round(sin(Double(1))*1000)/1000





