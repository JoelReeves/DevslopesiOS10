import UIKit

var namesOfIntegers = [Int:String]()

namesOfIntegers[3] = "three"
namesOfIntegers[44] = "forty four"

namesOfIntegers.count

namesOfIntegers = [:] // emptying out dictionary
namesOfIntegers.count


var airports: [String: String] = ["YYZ": "Toronto Pearson", "LAX": "Los Angeles International"]

if airports.isEmpty {
    print("the airports dictionary is empty")
} else {
    print("The airports dictionary has \(airports.count) items")
}

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"
airports["DEV"] = "Devslopes International"

airports["DEV"] = nil // rmeoving item from dictionary

for (key, value) in airports {
    print("\(key): \(value)")
}

for key in airports.keys {
    print("Key: \(key)")
}

for value in airports.values {
    print("Value: \(value)")
}
