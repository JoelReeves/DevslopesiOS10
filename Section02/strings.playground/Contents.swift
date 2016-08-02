import UIKit

var str = "Hello, playground"

var firstName = "Jack"
var lastName = "Bauer"

var fullName = firstName + " " + lastName
var age = 45
var fullName2 = "\(firstName) \(lastName) is \(age) years old"

fullName.append(" Jr.")

var bookTitle = "revenge of the crab cakes"
bookTitle = bookTitle.capitalized

var annoyingCapsText = "PLEASE HELP ME NOW"
var lowercaseText = annoyingCapsText.lowercased()


// Heck, Fetch

var sentance = "What the fetch?! Heck, that is crazy!"

if sentance.contains("fetch") || sentance.contains("Heck") {
    sentance.replacingOccurrences(of: "fetch", with: "tuna")
    sentance.replacingOccurrences(of: "Heck", with: "Playa")
}


