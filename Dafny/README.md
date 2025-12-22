# Доказательство корректности компьютерных программ

## Упражнение 0.0

(AtCoffeeShop ==> DrinkEspresso) && (AtGym ==> DrinkWater)

(!AtCoffeeShop || DrinkEspresso) && (!AtGym || DrinkWater)

## Упражнение 1.0

Если x равно 10, какое значение метод присвоит параметру r?

30

## Упражнение 1.1

[1.1 - 1.dfy](1.dfy)

## Упражнение 1.2

[1.2 - 1.dfy](1.dfy)

## Упражнение 1.3

Верификатор пишет "assertion might not hold".
[1.3 - 1.dfy](1.dfy)

## 1.4

Верификатор пишет "this is the postcondition that could not be proved".

[1.4 - 1.dfy](1.dfy)

## 1.5

[1.5 - 1.dfy](1.dfy)

## 1.6

[1.6 - 1.dfy](1.2.dfy)

## 1.7

[1.7 - 1.dfy](1.2.dfy)

## 1.10

[1.10 - 1.4.dfy](1.4.dfy)

ghost Average
basic Triple
"a call to a ghost function is allowed only in specification contexts (consider declaring the function without the 'ghost' keyword)"

ghost Average
ghost Triple
OK

basic Average
ghost Triple
OK

## 1.11

Будет ошибка на ассерте для переменной b, т.к. нет постусловия из метода M.
А тело метода непрозрачно.