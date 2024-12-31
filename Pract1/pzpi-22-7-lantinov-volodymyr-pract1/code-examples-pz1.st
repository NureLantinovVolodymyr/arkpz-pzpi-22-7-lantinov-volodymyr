Object subclass: #MyClass
    instanceVariableNames: 'unusedVar usedVar'.

MyClass >> someMethod
    "Використовуємо змінну usedVar, але unusedVar ніколи не використовуємо."
    usedVar := 42.


Object subclass: #MyClass
    instanceVariableNames: 'counter'.

MyClass >> incrementCounter
    counter := counter + 1.
    "Логування під час виконання"
    Transcript show: 'Значення counter: ', counter printString; cr.


Profiler start.
"Виконуємо метод, який хочемо профілювати"
MyClass new incrementCounter.
Profiler stop.


TestCase subclass: #MyTest
    testAddition [
        self assert: (2 + 2 = 4).
    ].
    
"MyTest run" "Запускаємо тест"


Object subclass: #MyClass
    instanceVariableNames: 'number1 number2'.

MyClass >> addNumbers
    ^self addNumber1: number1 to: number2.

MyClass >> addNumber1: aNumber1 to: aNumber2
    ^aNumber1 + aNumber2.


Object subclass: #MyClass
    instanceVariableNames: 'aCounter totalSum'.

MyClass >> calculateSum
    totalSum := aCounter + 10.


Object subclass: #MyClass
    instanceVariableNames: 'globalVar'.

MyClass >> exampleMethod
    | localVar |
    localVar := globalVar + 10.
    ^localVar.


Object subclass: #Shape
    instanceVariableNames: ''.

Shape >> area
    "Абстрактний метод для обчислення площі"
    self shouldNotImplement.

Shape >> perimeter
    "Абстрактний метод для обчислення периметра"
    self shouldNotImplement.

Object subclass: #Rectangle
    superclasses: #(Shape)
    instanceVariableNames: 'length width'.

Rectangle >> area
    "Реалізація методу для прямокутника"
    ^length * width.

Rectangle >> perimeter
    "Реалізація методу для периметра прямокутника"
    ^2 * (length + width).

Object subclass: #Circle
    superclasses: #(Shape)
    instanceVariableNames: 'radius'.

Circle >> area
    "Реалізація методу для кола"
    ^Math pi * radius * radius.

Circle >> perimeter
    "Реалізація методу для периметра кола"
    ^2 * Math pi * radius.
