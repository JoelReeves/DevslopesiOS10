import UIKit

var amITheBestTeacherEver = true
amITheBestTeacherEver = false
amITheBestTeacherEver = !amITheBestTeacherEver

if (true == false || true == true) {
    print("Huh?!?!")
}


var hasDataFinishedDownloading = false

if !hasDataFinishedDownloading {
    print("loading data...")
}


var bankBalance = 400
var itemToBuy = 400

if bankBalance >= itemToBuy {
    print("purchased item")
}

if itemToBuy > bankBalance {
    print("You need more money")
}

if itemToBuy == bankBalance {
    print("balance is now zero")
}


var bookTitle1 = "Harry Blotter"
var bookTitle2 = "Harry Blotter"

if bookTitle1 != bookTitle2 {
    print("need to fix spelling")
} else if bookTitle2.characters.count > 15 {
    print("find a new title for the book")
} else {
    print("book looks great. send to printer")
}