import UIKit

var employee1Salary = 20000.0
var employee2Salary = 28000.0
var employee3Salary = 32000.0
var employee4Salary = 40000.0

var salaries = [20000.0, 28000.0, 32000.0, 40000.0]


var index = 0
repeat {
    salaries[index] = salaries[index] + (salaries[index] * 0.10)
    index += 1
} while (index < salaries.count)



for index in 0..<salaries.count {
    salaries[index] = salaries[index] + (salaries[index] * 0.10)
}


for x in 1...5 {
    print("Index: \(x)")
}


for salary in salaries {
    print("Salary: \(salary)")
}