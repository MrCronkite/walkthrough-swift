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

let product = 30;
var price = 0;

if product<10{
    price = product*1000
    print(price)
}else if(product>=10&&product<=20){
    price = product*800
    print(price)
}else if product>20{
    price = product*600
    print(price)
}
