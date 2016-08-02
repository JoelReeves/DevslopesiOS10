import UIKit

// Array exercises
var stringArray = [String]()

var doubleArray: [Double] = [20.0, 15.5, 5.2, 69.456]

var intArray = [2, 4, 6, 8, 10]

stringArray.append("Batman")
stringArray.append("Vs.")
stringArray.append("Superman")

doubleArray.append(100.5)
doubleArray.append(-45.6)
doubleArray.append(46.89)

intArray.append(3)
intArray.append(4)
intArray.append(5)

stringArray.remove(at: 0)
doubleArray.remove(at: 3)
intArray.remove(at: 0)

stringArray.removeAll()

if intArray.isEmpty {
    print("int array is empty")
} else {
    print("int array has \(intArray.count) items")
}

for (index, value) in intArray.enumerated() {
    print("Item \(index + 1): \(value)")
}


// Loop exercises
var oddNumbers = [Int]()

for index in 1...100 {
    if index % 2 != 0 {
        oddNumbers.append(index)
    }
}
print("oddNumbers array has \(oddNumbers.count) items")


var sums = [Int]()

for index in 0..<oddNumbers.count {
    sums.append(index + 5)
}


var index = 0
repeat {
    print("The sum is: \(sums[index])")
    index += 1
} while (index < sums.count)
