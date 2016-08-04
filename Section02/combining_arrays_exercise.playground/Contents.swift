import UIKit

let firstArray = ["a", "b", "c"]
let secondArray = ["bo", "re", "me"]

func combineArrays(first: [String], second: [String]) -> [String] {
    
    if first.isEmpty && second.isEmpty {
        print("both arrays are empty")
        return [String]()
    } else if first.isEmpty {
        print("first array is empty, returning the second array")
        return second
    } else if second.isEmpty {
        print("second array is empty, returning the first array")
        return first
    } else {
        var combinedArray = [String]()
        let size = first.count >= second.count ? first.count : second.count
        
        for index in 0..<size {
            if first.count > index {
                combinedArray.append(first[index])
            }
            
            if second.count > index {
                combinedArray.append(second[index])
            }
        }
        print("returning both arrays")
        return combinedArray
    }
}

let newArray = combineArrays(first: firstArray, second: secondArray)
print(newArray)