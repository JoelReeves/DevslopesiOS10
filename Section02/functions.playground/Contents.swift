import UIKit

var length = 5
var width = 10

func calculateArea(length: Int, width: Int) -> Int {
    return length * width
}

let area = calculateArea(length: length, width: width)
let shape1 = calculateArea(length: 5, width: 4)
let shape2 = calculateArea(length: 4, width: 4)



var bankAccountBalance = 500.00
var shoes = 350.0

func purchaseItem(currentBalance: Double, itemPrice: Double) -> Double {
    if itemPrice <= currentBalance {
        print("Purchased item for: $\(itemPrice)")
        return currentBalance - itemPrice
    } else {
        print("You are broke. You should learn how to save money!")
        return currentBalance
    }
}

bankAccountBalance = purchaseItem(currentBalance: bankAccountBalance, itemPrice: shoes)

var macBookPro = 2500.0

bankAccountBalance = purchaseItem(currentBalance: bankAccountBalance, itemPrice: macBookPro)



// inout allows you to modify the parameter directly
func modifyPurchaseItem(currentBalance: inout Double, itemPrice: Double) {
    if itemPrice <= currentBalance {
        currentBalance -= itemPrice
        print("Purchased item for: $\(itemPrice)")
    } else {
        print("You are broke. You should learn how to save money!")
    }
}

var accountBalance = 3500.00
var hdtv = 1500.0


modifyPurchaseItem(currentBalance: &accountBalance, itemPrice: hdtv)

var ps4 = 350.0

modifyPurchaseItem(currentBalance: &accountBalance, itemPrice: ps4)
modifyPurchaseItem(currentBalance: &accountBalance, itemPrice: macBookPro)