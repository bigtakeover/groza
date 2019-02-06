//
//  ViewController.swift
//  Assignment BLOKS
//
//  Created by Ivan on 06/02/2019.
//  Copyright © 2019 Ivan Umanets. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    

    //BLOK 1
    comparisonOfTwoNmbers (numberOne: 99, numberTwo: 4)
    squareOfNumberAndCubeOfNumber (inputNumber: 30)
    countTillNumberAndBack (number: 15)
    quantityOfDivisors (number: 12)
    perfectNumber (number: 495)
    
    //BLOK 2
    manhattan(quantityOfMoney: 24, percent: 6, presentYear: 2019, yearOfContribution: 1826)
    poorStudent(scholarship: 700, everyMonthExpenses: 1000, risingOfPricesInPercent: 3, timeInMonth: 10)
    richStudent(scolarship: 700, everyMonthExpenses: 1000, risingOfPricesInPercent: 3, savings: 2400)
    
    reverseNumbersVerseDos(a: 2818)
    
    
}



func reverseNumbersVerseDos (a: Int) {    // ti pochti dodelal etu func
    var a = a
    var b = 0
    b = a % 10
    a = a / 10
    print ("abeg = \(a)")
    
    while a > 0 {
        
        b = b * 10
        print ("b = \(b)")
        a = a / 10
        print ("a = \(a)")
    }
    //        a = a % 10000
    //        a = a / 1000
    //        print ("a1 = \(a)")
    //        a = a % 10             //2
    //        print ("a2 = \(a)")
    //        a = a * 100             //200
    //        print ("a3 = \(a)")
    //        a = a % 10
    //        print ("a4 = \(a)")
    //        while a > 0 {
    //            a = ((a % 10) * 1000) + (((a / 10) % 10) * 10) + (a / 100)
    //            print ("aFINAL = \(a)")
    //            break
    //        }
}

func reverseNumbersVerseUno(a: Int) {   // dlya trehznachnogo
    var a = a
    while a > 0 {
        a = ((a % 10) * 100) + (((a / 10) % 10) * 10) + (a / 100)
        print ("a = \(a)")
        break
    }
}

func reverseNumbers(a: Int) {  // dlya dvuznachnogo
    var a = a
    var b = 0
    while a > 0 {
        b = a % 10
        b = b * 10
        b = b + a / 10
        print (b)
        break
    }
}

func richStudent (scolarship: Double, everyMonthExpenses: Double, risingOfPricesInPercent: Double, savings: Double) {
    var studentHasMoney: Bool = true
    var timeInMonth = 0
    var everyMonthExpenses = everyMonthExpenses
    let risingEveryMonth = (risingOfPricesInPercent * Double(everyMonthExpenses)) / 100
    var actualBalance = savings
    while actualBalance > 0 {
        let risingEveryMonth = (risingOfPricesInPercent * everyMonthExpenses) / 100  // procent
        print (risingEveryMonth)
        everyMonthExpenses = risingEveryMonth + everyMonthExpenses
        print (everyMonthExpenses)
        actualBalance = actualBalance + scolarship - everyMonthExpenses
        print (actualBalance)
        timeInMonth = timeInMonth + 1
        print ("\(timeInMonth) months")
    }
}

func poorStudent (scholarship: Double, everyMonthExpenses: Double, risingOfPricesInPercent: Double, timeInMonth: Int) {
    var everyMonthExpenses = everyMonthExpenses
    var totatlExpenses = 0.0
    for _ in 1...timeInMonth {
        let risingEveryMonth = (risingOfPricesInPercent * everyMonthExpenses) / 100
        everyMonthExpenses = risingEveryMonth + everyMonthExpenses
        totatlExpenses = totatlExpenses + everyMonthExpenses
    }
    print ("\((scholarship * Double(timeInMonth) - totatlExpenses).magnitude) UAH is necessary to make classes for \(timeInMonth) months including scolarship.")
    
}

func manhattan (quantityOfMoney: Double, percent: Int, presentYear: Int, yearOfContribution: Int) {
    var quantityOfMoney = quantityOfMoney
    let quantityOfYears = presentYear - yearOfContribution
    for _ in 1...quantityOfYears {
        var percent = Double((Double(percent) * quantityOfMoney) / 100)
        quantityOfMoney = quantityOfMoney + percent
    }
    print ("\(quantityOfMoney) USD in \(presentYear)")
}

// BLOK 1

func perfectNumber (number: Int) -> Int {
    let perfectNumber = number
    var sumOfDivisors = 0
    for i in 1..<perfectNumber {
        let k = perfectNumber % i
        if k == 0 {
            print ("\(i - k)")      // nahodit deliteli
            sumOfDivisors = sumOfDivisors + (i - k)
        }
    }
    if sumOfDivisors == number {
        print ("Perfect number", sumOfDivisors)
    } else {
        print ("Input number is imperfect, eat my shorts")
    }
    return perfectNumber
}

func quantityOfDivisors (number: Int) -> Int {
    let divisor = number
    var quantityOfDivisors = 0
    for i in 1...divisor {
        let  k = divisor % i
        if k == 0 {
            print ("\(i - k)")
            quantityOfDivisors = quantityOfDivisors + 1
        }
    }
    print ("Quantity of divisors \(quantityOfDivisors)")
    return quantityOfDivisors
}


func countTillNumberAndBack (number: Int) -> Int {
    let count = number
    for i in 1...count {
        print ("count \(i)")
    }
    for i in 1...count {
        print ("countdown\((count + 1) - i)")
    }
    return number
    
}

func squareOfNumber (inputNumber: Int, printCount: Int) -> Int {
    let number = inputNumber
    let result = number * number
    for _ in 0..<printCount {
        print("Square of number \(number) equals \(result)")
    }
    return result
}

func squareOfNumberAndCubeOfNumber (inputNumber: Int) -> Int {
    let number = inputNumber
    let squareOfNumber = pow(Decimal(number), 2)
    let cubeOfNumber = pow(Decimal(number), 3)
    print("Square of number \(number) equals \(squareOfNumber)")
    print("Cube of number \(number) equals \(cubeOfNumber)")
    return number
}

func comparisonOfTwoNmbers (numberOne: Int, numberTwo: Int) -> Int {
    let a = numberOne
    let b = numberTwo
    if a > b {
        print (a)
    }
    else {
        print (b)
    }
    return numberOne
    
}




}
