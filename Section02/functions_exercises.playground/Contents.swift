import UIKit


func returnSum(number1: Double, number2: Double) -> Double {
    return number1 + number2
}

func returnDifference(number1: Int, number2: Int) -> Int {
    return number1 - number2
}

func returnProduct(number1: Float, number2: Float) -> Float {
    return number1 * number2
}

func returnDivision(number1: Double, number2: Double) -> Double {
    if number2 == 0 {
        print("unable to divide by 0")
        return 0
    } else {
        return number1 / number2
    }
}


let sum = returnSum(number1: 10.5, number2: 5.1)
print("10.5 + 5.1 = \(sum)")

let difference = returnDifference(number1: 100, number2: 75)
print("100 - 75 = \(difference)")

let product = returnProduct(number1: 10.0, number2: 10.0)
print("10.0 * 10.0 = \(product)")

let division1 = returnDivision(number1: 0, number2: 5)
let division2 = returnDivision(number1: 10, number2: 0)
let division3 = returnDivision(number1: 10, number2: 2)
print("0 / 5 = \(division1)")
print("10 / 0 = \(division2)")
print("10 / 2 = \(division3)")
